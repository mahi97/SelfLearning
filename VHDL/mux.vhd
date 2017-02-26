library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
  port (
	sel : in std_logic;
	d1  : in std_logic;
	d2  : in std_logic;
	o1  : out std_logic
  ) ;
end entity ; -- mux

architecture arch of mux is


begin

o1 <= d1 when sel='0' else d2;
end architecture ; -- arch