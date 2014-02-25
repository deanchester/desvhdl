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
	COMPONENT DES is
		port (
			clock, start, reset, decryption : IN STD_LOGIC; 
			plainText, key : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
			done : OUT STD_LOGIC;
			ciperText : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
		) ;
	end COMPONENT;
	
	COMPONENT KeyStore is
	  port (
		clock : IN STD_LOGIC;
		keyIn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		keyOut : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	  ) ;
	end COMPONENT;
begin

end architecture ; -- arch