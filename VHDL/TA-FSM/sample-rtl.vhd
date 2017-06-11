library IEEE;
use IEEE.std_logic_1164.all;

entity shift_reg is
  port (
	d : in std_logic_vector(3 downto 0);
	clk, en, shift : in std_logic;
	qout : out std_logic 
  ) ;
end entity ; -- shift_reg

architecture behav of shift_reg is
	signal q : std_logic_vector(3 downto 0);
begin
	process_0 : process( clk )
	begin
		if clk = '1' and clk'event then
			if en = '1' then
				q <= d;
			elsif shift = '1' then
				qout <= q(3);
				q <= q(2 downto 0) & '0';
			end if;
		end if;

	end process ; -- process_0

end architecture ; -- behav
