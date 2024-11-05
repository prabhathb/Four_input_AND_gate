library ieee;
use ieee.std_logic_1164.all;

-- the toplevel entity of a testbench is the testbench itself
-- it is represented as an empty entity
entity four_input_AND_gate_tb is
--empty
end entity;

-- testbench is described using the structural modeling
architecture tb_structural of four_input_AND_gate_tb is

	-- declare the Device Under Test (DUT) to be tested
	component four_input_AND_gate is
		port(
			in0: IN std_logic;	--input in0
			in1: IN std_logic;	--input in1
			in2: IN std_logic;	--input in2
			in3: IN std_logic;	--input in3
			r: OUT std_logic	--output r
		);
	end component;

	-- bind the components
	for all: four_input_AND_gate use entity work.four_input_AND_gate(structural);

	-- declare the signals used
	signal A: std_logic := '0';
	signal B: std_logic := '0';
	signal C: std_logic := '0';
	signal D: std_logic := '0';
	signal R_out: std_logic := '0';
begin

	-- instantiate the components
	u0: four_input_AND_gate port map(A,B,C,D,R_out);

	-- produce the signals
	A <= not A after 10 ps;
	B <= not B after 20 ps;
	C <= not C after 40 ps;
	D <= not D after 80 ps;

end architecture;