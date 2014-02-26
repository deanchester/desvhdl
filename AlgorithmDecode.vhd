library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity AlgorithmDecode is
  port (
	clock : IN STD_LOGIC;
	algorithmSelect : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	mode1, mode2, mode3 : OUT STD_LOGIC
  ) ;
end entity ; -- AlgorithmDecode

architecture arch of AlgorithmDecode is

begin

end architecture ; -- arch