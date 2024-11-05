library ieee;
use ieee.std_logic_1164.all;

-- define the entity
-- this describes the interface of the device you design
entity two_input_AND_gate is
	port(
		a: IN std_logic;	--input a
		b: IN std_logic;	--input b
		r: OUT std_logic	--output r
        );
end entity;

-- define the architecture of the device you design
-- behavioural architecture takes the process statement
architecture behavioural of two_input_AND_gate is 

begin
	process (a,b)	-- process statement
	begin
		if (a = '0') then
			r <= '0';
		elsif (b = '0') then
			r <= '0';
		else
			r <= '1';
		end if;
	end process;	-- process statement ends
end architecture;

-- dataflow architecture takes the concurrent statement
architecture dataflow of two_input_AND_gate is

begin
	r <= a AND b;	-- concurrent statement <=

end architecture;
