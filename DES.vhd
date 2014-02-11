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
	
	signal left1, right1, left2, right2, left3, right3, left4, right4, left5,
		right5, left6, right6, left7, right7, left8, right8, left9, right9, 
		left10, right10, left11, right11, left12, right12, left13, right13,
		left14, right14, left15, right15, left16, 
		right16 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal leftResult1, rightResult1, leftResult2, rightResult2, leftResult3, 
		rightResult3, leftResult4, rightResult4, leftResult5, rightResult5, 
		leftResult6, rightResult6, leftResult7, rightResult7, leftResult8, 
		rightResult8, leftResult9, rightResult9, leftResult10, rightResult10,
		leftResult11, rightResult11, leftResult12, rightResult12, leftResult13,
		rightResult13, leftResult14, rightResult14, leftResult15, 
		rightResult15, leftResult16, rightResult16, leftResult17, 
		rightResult17 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal leftRegOut1, rightRegOut1, leftRegOut2, rightRegOut2, leftRegOut3, 
		rightRegOut3, leftRegOut4, rightRegOut4, leftRegOut5, rightRegOut5, 
		leftRegOut6, rightRegOut6, leftRegOut7, rightRegOut7, leftRegOut8, 
		rightRegOut8, leftRegOut9, rightRegOut9, leftRegOut10, rightRegOut10, 
		leftRegOut11, rightRegOut11, leftRegOut12, rightRegOut12, leftRegOut13,
		rightRegOut13, leftRegOut14, rightRegOut14, leftRegOut15, rightRegOut15,
		leftRegOut16, rightRegOut16 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal feistelResult1, feistelResult2, , feistelResult3, feistelResult4, 
		feistelResult5, feistelResult6, feistelResult7, feistelResult8, 
		feistelResult9, feistelResult10, feistelResult11, feistelResult12, 
		feistelResult13, feistelResult14, feistelResult15, feistelResult16,
		feistelResult17 : STD_LOGIC_VECTOR(31 DOWNTO 0);
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
	
	left1 <= permOut(31 DOWNTO 0);
	right1 <= permOut(63 DOWNTO 32);
	
	-- Load reg with left and right. 
	regLeft1 : PIPOShift32 PORT MAP(left1, leftRegOut1);
	regRight1 : PIPOShift32 PORT MAP(right1, rightRegOut1);
	f1 : feistelFunction PORT MAP(rightRegOut1, key1Out, feistelResult1);
	leftResult1 <= rightRegOut1; 
	xor1 : XORBit32 PORT MAP(leftRegOut1, feistelResult1, rightResult1);
	
	regLeft2 : PIPOShift32 PORT MAP(leftResult1, leftRegOut1);
	regRight2 : PIPOShift32 PORT MAP(rightResult1, rightRegOut1);
	f2 : feistelFunction PORT MAP(right2, key2Out, feistelResult2);
	leftResult2 <= right2; 
	xor2 : XORBit32 PORT MAP (leftRegOut2, feistelResult2, rightResult3);
	
	regLeft3 : PIPOShift32 PORT MAP(leftResult2, leftRegOut2);
	regRight3 : PIPOShift32 PORT MAP(rightResult2, rightRegOut2);
	f3 : feistelFunction PORT MAP(right3, key3Out, feistelResult3);
	leftResult3 <= right3; 
	xor3 : XORBit32 PORT MAP (leftRegOut3, feistelResult3, rightResult4);

	regLeft4 : PIPOShift32 PORT MAP(leftResult3, leftRegOut3);
	regRight4 : PIPOShift32 PORT MAP(rightResult3, rightRegOut3);
	f4 : feistelFunction PORT MAP(right4, key4Out, feistelResult4);
	leftResult4 <= right4; 
	xor4 : XORBit32 PORT MAP (leftRegOut4, feistelResult4, rightResult5);

	regLeft5 : PIPOShift32 PORT MAP(leftResult4, leftRegOut4);
	regRight5 : PIPOShift32 PORT MAP(rightResult4, rightRegOut4);
	f5 : feistelFunction PORT MAP(right5, key5Out, feistelResult5);
	leftResult5 <= right5; 
	xor5 : XORBit32 PORT MAP (leftRegOut5, feistelResult5, rightResult6);

	regLeft6 : PIPOShift32 PORT MAP(leftResult5, leftRegOut5);
	regRight6 : PIPOShift32 PORT MAP(rightResult5, rightRegOut5);
	f6 : feistelFunction PORT MAP(right6, key6Out, feistelResult6);
	leftResult6 <= right6; 
	xor6 : XORBit32 PORT MAP (leftRegOut6, feistelResult6, rightResult7);

	regLeft7 : PIPOShift32 PORT MAP(leftResult6, leftRegOut6);
	regRight7 : PIPOShift32 PORT MAP(rightResult6, rightRegOut6);
	f7 : feistelFunction PORT MAP(right7, key7Out, feistelResult7);
	leftResult7 <= right7; 
	xor7 : XORBit32 PORT MAP (leftRegOut7, feistelResult7, rightResult8);

	regLeft8 : PIPOShift32 PORT MAP(leftResult7, leftRegOut7);
	regRight8 : PIPOShift32 PORT MAP(rightResult7, rightRegOut7);
	f8 : feistelFunction PORT MAP(right8, key8Out, feistelResult8);
	leftResult8 <= right8; 
	xor8 : XORBit32 PORT MAP (leftRegOut8, feistelResult8, rightResult9);

	regLeft9 : PIPOShift32 PORT MAP(leftResult8, leftRegOut8);
	regRight9 : PIPOShift32 PORT MAP(rightResult8, rightRegOut8);
	f9 : feistelFunction PORT MAP(right9, key9Out, feistelResult9);
	leftResult9 <= right9; 
	xor9 : XORBit32 PORT MAP (leftRegOut9, feistelResult9, rightResult10);

	regLeft10 : PIPOShift32 PORT MAP(leftResult9, leftRegOut9);
	regRight10 : PIPOShift32 PORT MAP(rightResult9, rightRegOut9);
	f10 : feistelFunction PORT MAP(right10, key10Out, feistelResult10);
	leftResult10 <= right10; 
	xor10 : XORBit32 PORT MAP (leftRegOut10, feistelResult10, rightResult11);

	regLeft11 : PIPOShift32 PORT MAP(leftResult10, leftRegOut10);
	regRight11 : PIPOShift32 PORT MAP(rightResult10, rightRegOut10);
	f11 : feistelFunction PORT MAP(right11, key11Out, feistelResult11);
	leftResult11 <= right11; 
	xor11 : XORBit32 PORT MAP (leftRegOut11, feistelResult11, rightResult12);

	regLeft12 : PIPOShift32 PORT MAP(leftResult11, leftRegOut11);
	regRight12 : PIPOShift32 PORT MAP(rightResult11, rightRegOut11);
	f12 : feistelFunction PORT MAP(right12, key12Out, feistelResult12);
	leftResult12 <= right12; 
	xor12 : XORBit32 PORT MAP (leftRegOut12, feistelResult12, rightResult13);

	regLeft13 : PIPOShift32 PORT MAP(leftResult12, leftRegOut12);
	regRight13 : PIPOShift32 PORT MAP(rightResult12, rightRegOut12);
	f13 : feistelFunction PORT MAP(right13, key13Out, feistelResult13);
	leftResult13 <= right13; 
	xor13 : XORBit32 PORT MAP (leftRegOut13, feistelResult13, rightResult14);

	regLeft14 : PIPOShift32 PORT MAP(leftResult13, leftRegOut13);
	regRight14 : PIPOShift32 PORT MAP(rightResult13, rightRegOut13);
	f14 : feistelFunction PORT MAP(right14, key14Out, feistelResult14);
	leftResult14 <= right14; 
	xor14 : XORBit32 PORT MAP (leftRegOut14, feistelResult14, rightResult15);

	regLeft15 : PIPOShift32 PORT MAP(leftResult14, leftRegOut14);
	regRight15 : PIPOShift32 PORT MAP(rightResult14, rightRegOut14);
	f15 : feistelFunction PORT MAP(right15, key15Out, feistelResult15);
	leftResult15 <= right15; 
	xor15 : XORBit32 PORT MAP (leftRegOut15, feistelResult15, rightResult16);

	regLeft16 : PIPOShift32 PORT MAP(leftResult15, leftRegOut15);
	regRight16 : PIPOShift32 PORT MAP(rightResult15, rightRegOut15);
	f16 : feistelFunction PORT MAP(right16, key16Out, feistelResult16);
	leftResult16 <= right16; 
	xor16 : XORBit32 PORT MAP (leftRegOut16, feistelResult16, rightResult17);
	

end architecture ; -- arch