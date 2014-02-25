library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity TDES is
  port (
	clock, decryption : IN STD_LOGIC;
	key1, key2, key3, plainText : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	cipherText : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	done : OUT STD_LOGIC;
  ) ;
end entity ; -- TDES

architecture arch of TDES is

begin

end architecture ; -- arch