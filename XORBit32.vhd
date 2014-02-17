library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity XORBit32 is
  port (
	R : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	K : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	RES : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  ) ;
end entity ; -- XORBit48

architecture arch of XORBit32 is

begin
	RES <= R XOR K;

end architecture ; -- arch