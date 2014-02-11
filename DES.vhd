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
	
  	key1Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key2Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key3Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key4Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key5Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key6Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key7Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key8Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key9Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key10Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key11out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key12Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key13Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key14Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key15Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key16Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
	
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
	signal combined, permOut : STD_LOGIC_VECTOR(63 DOWNTO 0);
begin
	combined(7 DOWNTO 0) <= plainTextB1;
	combined(15 DOWNTO 8) <= plainTextB2;
	combined(23 DOWNTO 16) <= plainTextB3;
	combined(31 DOWNTO 24) <= plainTextB4;
	combined(39 DOWNTO 32) <= plainTextB5;
	combined(47 DOWNTO 40) <= plainTextB6;
	combined(55 DOWNTO 48) <= plainTextB7;
	combined(63 DOWNTO 56) <= plainTextB8;
	
	perm : initialPermutation PORT MAP(combined, permOut);
	
	left <= permOut(31 DOWNTO 0);
	right = permOut(63 DOWNTO 32);

end architecture ; -- arch