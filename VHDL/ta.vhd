library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is 
	port
	(
		A, B, Cin : in  bit;
		S, Cout   : out bit
	);

end full_adder;

architecture RTL of full_adder is

	signal w : bit_vector(1 downto 0);

begin

w := A + B + Cin;
S <= w(0);
Cout <= w(1);  

end architecture ; -- RTL

