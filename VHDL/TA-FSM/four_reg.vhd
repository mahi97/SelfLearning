library IEEE;
use IEEE.std_logic_1164.all;

entity four_reg is
  port (
	d : in std_logic_vector(3 downto 0);
	clk, en : in std_logic;
	q : out std_logic_vector(3 downto 0) 
  ) ;
end entity ; -- four_reg

architecture behav of four_reg is
begin
	process_0 : process( clk )
	begin
		if clk = '1' and clk'event then
			if en = '1' then
				q <= d;
			end if;
		end if;

	end process ; -- process_0



end architecture ; -- behav