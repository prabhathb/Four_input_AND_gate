library ieee;
use ieee.std_logic_1164.all;

-- define the entity
-- this describes the interface of the device you design
entity four_input_AND_gate is
	port(
		in0: IN std_logic;	--input in0
		in1: IN std_logic;	--input in1
		in2: IN std_logic;	--input in2
		in3: IN std_logic;	--input in3
		r: OUT std_logic	--output r
	);
end entity;

-- define the architecture of the device you design
-- structural architecture instantiates the components
-- and connect them to create the device you design
architecture structural of four_input_AND_gate is

	-- declare the components you use
	component two_input_AND_gate is
		port(
		a: IN std_logic;	--input a
		b: IN std_logic;	--input b
		r: OUT std_logic	--output r
        );
	end component;

	-- bind the component
	for all:two_input_AND_gate use entity work.two_input_AND_gate(behavioural);

	-- declare the signals
	signal im0: std_logic := '0';
	signal im1: std_logic := '0';

begin
	-- instantiate the components
	u2:two_input_AND_gate port map(im0,im1,r);	
	u1:two_input_AND_gate port map(in2,in3,im1);
	u0:two_input_AND_gate port map(in0,in1,im0);	

end architecture;
