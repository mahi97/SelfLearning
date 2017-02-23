entity subtractor_tb is
end subtractor_tb;

architecture behav of subtractor_tb is

	component subtractor
		port(i0, i1 : in bit; bi : in bit; s : out bit; bo : out bit);
	end component;

	for subtractor_0 : subtractor use entity work.subtractor;
		signal i0, i1, bi, s, bo : bit;
begin
		subtractor_0 : subtractor port map (i0 => i0, i1 => i1, bi => bi,
					 s => s, bo => bo);

		process
		type pattern_type is record
			i0, i1, bi : bit;
			s, bo : bit;
		end record;

		type pattern_array is array (natural range <>) of pattern_type;
		constant patterns : pattern_array :=
	    (
	    ('0', '0', '0', '0', '0'),
		('0', '0', '1', '1', '1'),
		('0', '1', '0', '1', '1'),
		('0', '1', '1', '0', '1'),
		('1', '0', '0', '1', '0'),
		('1', '0', '1', '0', '0'),
		('1', '1', '0', '0', '0'),
		('1', '1', '1', '1', '1')
		);

		begin
			for i in patterns'range loop
				i0 <= patterns(i).i0;
				i1 <= patterns(i).i1;
				bi <= patterns(i).bi;

				wait for 1 ns;

				assert s = patterns(i).s
					report "bad sum value" severity error;
				assert bo = patterns(i).bo
					report "bad co value" severity error;
			end loop;
			assert false report "end of test" severity note;

			wait;
		end process;
end behav;

