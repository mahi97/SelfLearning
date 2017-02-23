entity subtractor is
	port (i0, i1 : in bit; bi : in bit; s : out bit; bo : out bit);
end subtractor;

architecture rtl of subtractor is
begin
	s  <= i0 xor i1 xor bi;
	bo <= ((not i0) and bi) or ((not i0) and i1) or (i1 and bi);
end rtl;

