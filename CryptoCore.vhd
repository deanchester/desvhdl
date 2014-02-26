library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity CryptoCore is
  port (
	clock
  ) ;
end entity ; -- CryptoCore

architecture arch of CryptoCore is
	COMPONENT AlgorithmSelect is
	  port (
		clock : IN STD_LOGIC;
		algorithmSelect : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		tMode, 	encryptionMode : OUT STD_LOGIC
	  ) ;
	end COMPONENT;
	
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
		keyOut : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	  ) ;
	end COMPONENT;
	
	COMPONENT Mux64 is
		port (
			sel : IN STD_LOGIC; 
			A, B : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
			Y : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
		) ;
	end COMPONENT;
begin

end architecture ; -- arch