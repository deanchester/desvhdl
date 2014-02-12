library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity XORBit64 is
  port (
	R : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	Key : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	RES : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  ) ;
end entity ; -- XORBit48

architecture arch of XORBit64 is

begin
	RES <= R XOR Key;

end architecture ; -- arch