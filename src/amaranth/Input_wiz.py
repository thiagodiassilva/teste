from amaranth import *
from amaranth import Elaboratable, Module, Signal, unsigned, Const 
from amaranth.sim import Simulator
from amaranth.back import rtlil, verilog
# import numpy as np
from amaranth.cli import main


def generate_verilog(filename="mod.v"):
    m = Module()
    s_input = Signal(unsigned(8))
    s_output = Signal(unsigned(25))
    dut = Input_wizz(s_input, s_output)
    with open(filename, "w") as f:
        f.write(verilog.convert(dut.Input_wiz, ports=[s_input, s_output]))


class Input_wizz:
    def __init__(self, In_raw : Signal(unsigned(8)), In_image : Signal(unsigned(25))):

        # In_raw: system input, 8 bit bus, 
        #         In_raw [7:5]: indicate which row of the image the input belong to
        #         In_raw [4:0]: The value of each pixel on a row of a 5X5 image
        self.In_raw = In_raw

        # In_image: 25 bit bus representing the 5x5 image
        #           [4:0] -> 1st row, ... [24:20] -> last row 
        self.In_image = In_image

        self.Input_wiz = Module()

        # create constants for row numbers 
        row_1 = Const(0, unsigned(3))
        row_2 = Const(1, unsigned(3))
        row_3 = Const(2, unsigned(3))
        row_4 = Const(3, unsigned(3))
        row_5 = Const(4, unsigned(3))

        # create signal for In_raw[7:5]
        with self.Input_wiz.Switch(self.In_raw[0:3]):
            with self.Input_wiz.Case("000"):
                self.Input_wiz.d.sync += self.In_image[0:5].eq(self.In_raw[3:8])
            with self.Input_wiz.Case("001"):
                self.Input_wiz.d.sync += self.In_image[5:10].eq(self.In_raw[3:8])
            with self.Input_wiz.Case("010"):
                self.Input_wiz.d.sync += self.In_image[10:15].eq(self.In_raw[3:8])
            with self.Input_wiz.Case("011"):
                self.Input_wiz.d.sync += self.In_image[15:20].eq(self.In_raw[3:8])
            with self.Input_wiz.Case("100"):
                self.Input_wiz.d.sync += self.In_image[20:25].eq(self.In_raw[3:8])
