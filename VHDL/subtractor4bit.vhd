entity subtractor4bit is
	port (i0, i1 : in bit_vector; bi : in bit; s : out bit_vector; bo : out bit);
end subtractor4bit;

architecture rtl of subtractor4bit is
begin
	s  <= i0 xor i1 xor bi;
	bo <= ((not i0) and bi) or ((not i0) and i1) or (i1 and bi);
end rtl;

