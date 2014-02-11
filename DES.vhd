library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity DES is
  port (
	clock : in STD_LOGIC;
	plainTextB1 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	plainTextB2 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	plainTextB3 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	plainTextB4 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	plainTextB5 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	plainTextB6 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	plainTextB7 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	plainTextB8 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	keyB1 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	keyB2 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	keyB3 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	keyB4 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	keyB5 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	keyB6 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	keyB7 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	keyB8 : in STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	cipherTextB1 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	cipherTextB2 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	cipherTextB3 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	cipherTextB4 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	cipherTextB5 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	cipherTextB6 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	cipherTextB7 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	cipherTextB8 : out STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	done : out STD_LOGIC;
  ) ;
end entity ; -- DES

architecture arch of DES is
	COMPONENT PIPOShift32 is
		port (
			clock : IN STD_LOGIC;
			dataIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			dataOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			) ;
	end COMPONENT;


	COMPONENT PIPOShift48 is
		port (
			clock : IN STD_LOGIC;
			dataIN : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			dataOUT : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
			) ;
	end COMPONENT;
	
	COMPONENT feistelFunction is
		port (
			fIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			K : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			fOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		) ;
	end COMPONENT;
	
	COMPONENT initialPermutation is
	  port (
		plain : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		permutated : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	  );
	end COMPONENT;
	
	COMPONENT XORBit32 is
		port (
			R : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			Key : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			RES : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		) ;
	end COMPONENT;
	
	COMPONENT inversePermutation is
	  port (
		plain : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
		permutated : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	  );
	end COMPONENT;
	
	signal left, right : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal leftResult, rightResult : STD_LOGIC_VECTOR(31 DOWNTO 0);
begin

end architecture ; -- arch