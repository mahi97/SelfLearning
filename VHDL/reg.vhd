library IEEE;
use IEEE.std_logic_1164.all;

entity reg is
  port (
	clock : in std_logic;
	d : in std_logic;
	q : out std_logic
  ) ;
end entity ; -- reg