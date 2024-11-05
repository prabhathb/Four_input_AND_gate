# Four_input_AND_gate
 This demonstrates the use of behavioural, dataflow and structural modeling to design a four input AND gate in VHDL.

The Device described in VHDL is a four input AND gate which is constructed by using three two input AND gates.

Inputs are taken by two two input AND gates and they produce two interemdiate outputs which are fed as inputs to the third two input AND gate which produces the overall output.

Two input AND gate entity is described using both the behavioural and dataflow models. This entity is instantiated twise to create the four input AND gate whcih is described using the structural modeling.

Behavioural, dataflow and structural modeling are introduced in the undergraduate course modules using HDLs such as VHDL and Verilog.

The testbench is created to simulate the inputs applied to four input ANd gate and monitors the simulated output.
