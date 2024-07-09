from amaranth import *
from amaranth import Elaboratable, Module, Signal, unsigned, Const 
from amaranth.sim import Simulator
from amaranth.back import rtlil, verilog
# import numpy as np
from amaranth.cli import main
import numpy as np

def generate_verilog(filename="mod.v"):
    m = Module()
    s_input = Signal(unsigned(8))
    s_output = Signal(unsigned(25))
    dut = m(s_input, s_output)
    with open(filename, "w") as f:
        f.write(verilog.convert(dut.m, ports=[s_input, s_output]))

class IO_Block:
    def __init__(self, m:Module, In_raw : Signal, In_image : Signal):

        # In_raw: system input, 8 bit bus, 
        #         In_raw [7:5]: indicate which row of the image the input belong to
        #         In_raw [4:0]: The value of each pixel on a row of a 5X5 image
        self.In_raw = In_raw

        # In_image: 25 bit bus representing the 5x5 image
        #           [4:0] -> 1st row, ... [24:20] -> last row 
        self.In_image = In_image

        self.m = m

    def activate(self):
        # create signal for In_raw[7:5]
        with self.m.Switch(self.In_raw[0:3]):
            with self.m.Case("000"):
                self.m.d.sync += self.In_image[0:5].eq(self.In_raw[3:8])
            with self.m.Case("001"):
                self.m.d.sync += self.In_image[5:10].eq(self.In_raw[3:8])
            with self.m.Case("010"):
                self.m.d.sync += self.In_image[10:15].eq(self.In_raw[3:8])
            with self.m.Case("011"):
                self.m.d.sync += self.In_image[15:20].eq(self.In_raw[3:8])
            with self.m.Case("100"):
                self.m.d.sync += self.In_image[20:25].eq(self.In_raw[3:8])

def test_IO_Block(x, test_name="test"):
    # create a module
    m = Module()
    s_input = Signal(unsigned(8))
    s_output = Signal(unsigned(25))
    block = IO_Block(m, s_input, s_output)
    block.activate()

    #fomat the input
    shape_data = np.array(x).reshape(5, -1).tolist()
    data =[]
    for i,d in enumerate(shape_data):
        x_ = 0
        for j, bit in enumerate(d):
            x_ += bit*2**j
        data.append((i,x_))

    async def test_bench(ctx):
        for p in data:
            # set the input
            # await ctx.tick()
            # m.d.sync+= s_input.eq(Const(int(p[0]*2**5 + p[1])))
            ctx.set(s_input, p[1]*2**3 + p[0])
            # print(f"in = {ctx.get(s_input):b}")
            await ctx.tick()
            # print(f"out = {ctx.get(s_output):b}")
        final = f"{ctx.get(s_output):b}"
        # convert the output to a list of 1s and 0s
        res = []
        for i in final:
            res.append(bool(int(i)))
        while len(res) < 25:
            res.insert(0, False)
        res = np.array(res[::-1])
        assert np.all(res == np.array(x))

    sim = Simulator(m)
    sim.add_clock(1e-6)
    sim.add_testbench(test_bench)
    with sim.write_vcd(test_name+".vcd"):
        sim.run()
    