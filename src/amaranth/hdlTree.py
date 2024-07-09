from amaranth import *
from amaranth import Elaboratable, Module, Signal, unsigned, Const 
from amaranth.sim import Simulator
from amaranth.back import rtlil, verilog
# import numpy as np
from amaranth.cli import main


def generate_verilog(root, filename="tree.v"):
    m = Module()
    s_input = Signal(unsigned(25))
    s_output = Signal(unsigned(8))
    root.rec_set_m_i_o(m, s_input, s_output)
    root.activate()
    with open(filename, "w") as f:
        f.write(verilog.convert(m, ports=[s_input, s_output]))

class node:
    def __init__(self, m, input_, output_, index=-1, class_=-1,  child_yes=None, child_no=None, isLeaf=False):
        self.m = m
        self.input = input_
        self.output = output_
        self.index = Const(index)
        self.index_num = index
        self.class_ = Const(class_)
        self.class_num = class_
        self.isLeaf = isLeaf
        self.child_yes = child_yes
        self.child_no = child_no


    def activate(self):
        if not self.isLeaf:
            # with self.m.If(self.input[self.index]):
            with self.m.If(~self.input.bit_select(self.index, 1)):
                self.child_yes.activate()
            with self.m.Else():
                self.child_no.activate()
        else:
            # self.m.d.comb+= self.output[self.class_].eq(1)
            self.m.d.comb+= self.output.eq(self.class_)
    
    def __repr__(self) -> str:
        return f"node{self.index_num}({self.class_num}) isLeaf: {self.isLeaf}"
    
    def print_tree(self, level=0):
        print("\t"*level, self)
        if not self.isLeaf:
            self.child_yes.print_tree(level+1)
            self.child_no.print_tree(level+1)
    
    def rec_set_m_i_o(self, m, i, o):
        self.m = m
        self.input = i
        self.output = o
        if not self.isLeaf:
            self.child_yes.rec_set_m_i_o(m, i, o)
            self.child_no.rec_set_m_i_o(m, i, o)

def test_Tree(x, y, root, test_name="test"):
    # set correct input output signals
    m = Module()
    s_input = Signal(unsigned(25))
    s_output = Signal(unsigned(8))
    # set the input output signals
    root.rec_set_m_i_o(m, s_input, s_output)
    root.activate()
    # convert x from booleqn array to int
    x_ = 0
    for i, bit in enumerate(x):
        x_ += bit*2**i
    # init the input
    m.d.sync+= s_input.eq(Const(int(x_)))
    async def test_bench(ctx):
        global res
        for _ in range(2):
            await ctx.tick()
        assert ctx.get(s_output) == y

    sim = Simulator(m)
    sim.add_clock(1e-6)
    sim.add_testbench(test_bench)

    with sim.write_vcd(test_name+".vcd"):
        sim.run()
