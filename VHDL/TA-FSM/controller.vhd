library IEEE;
use IEEE.std_logic_1164.all;

entity controller is
  port (
	clk, rst : in std_logic;
	register_load, register_shift : out std_logic
  ) ;
end entity ; -- controller

architecture rtl of controller is
	type state is (S0, S1, S2, S3, S4);
	signal current_state : state;
	signal next_state : state;
		
begin
	process_1 : process( current_state )
	begin
		case( current_state ) is
		
			when S0 =>
				next_state <= S1;				
				register_load <= '0';
				register_shift <= '1';
			when S1 =>
				next_state <= S2;
			when S2 =>
				next_state <= S3;
			when S3 =>
				next_state <= S4;
			when S4 =>
				next_state <= S0;		
		end case ;
	end process ; -- process_1

	process_2 : process( clk, rst )
	begin
		if rst = '1' then
			current_state <= S0;
		end if;
		if clk'event and clk = '1' then
			current_state <= next_state;
		end if;
	end process ; -- process_2


end architecture ; -- rtl