library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity AlgorithmSelect is
  port (
	clock : IN STD_LOGIC;
	algorithmSelect : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	tMode, 	encryptionMode : OUT STD_LOGIC
  ) ;
end entity ; -- AlgorithmSelect

architecture arch of AlgorithmSelect is

begin

end architecture ; -- arch