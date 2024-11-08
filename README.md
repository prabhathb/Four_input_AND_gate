# Four_input_AND_gate
 This demonstrates the use of behavioural, dataflow and structural modeling to design a four input AND gate in VHDL.

The Device described in VHDL is a four input AND gate which is constructed by using three two input AND gates.

Inputs are taken by two two input AND gates and they produce two interemdiate outputs which are fed as inputs to the third two input AND gate which produces the overall output.

Two input AND gate entity is described using both the behavioural and dataflow models. This entity is instantiated twice to create the four input AND gate whcih is described using the structural modeling.

Behavioural, dataflow and structural modeling are introduced in the undergraduate course modules using HDLs such as VHDL and Verilog.

The test bench is created to simulate the inputs applied to four input AND gate and monitors the simulated output.

Typical steps of creating a test bench are followed in the respective VHDL file. These steps are listed below.
  01. Creating a top level entity for the test bench which is actually and empty entity.
  02. Declaring the component to be tested in the test bench. This is known as the Device Under Test (DUT).
  03. Bind the DUT component to the architecture of it which needs to be tested.
  04. Declare the signals to be used in the test bench.
  05. Instantiate the DUT by mapping the ports with the signals declared above.
  06. Generating the input signals in the proper sequence to be applied to the DUT for test.
  
Simulation was done on ModelSim starter edition 2020.1 by Mentor Graphics.
