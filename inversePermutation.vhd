library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity inversePermutation is
	port (
		left, right : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		inverseOut : Out STD_LOGIC_VECTOR(63 DOWNTO 0)
	) ;
end entity ; -- inversePermutation

architecture arch of inversePermutation is
	SIGNAL inverseIn : STD_LOGIC_VECTOR(63 DOWNTO 0);
begin
	inverseIn(31 DOWNTO 0) <= left;
	inverseIn(63 DOWNTO 32) <= right;
	inverseOut(63)  <= inverseIn(0);
	inverseOut(62) <= inverseIn(1);
	inverseOut(61)  <= inverseIn(2);
	inverseOut(60)  <= inverseIn(3);
	inverseOut(59)  <= inverseIn(4);
	inverseOut(58)  <= inverseIn(5);
	inverseOut(57)  <= inverseIn(6);
	inverseOut(56)  <= inverseIn(7);
	inverseOut(55)  <= inverseIn(8);
	inverseOut(54) <= inverseIn(9);
	inverseOut(53)  <= inverseIn(10);
	inverseOut(52)  <= inverseIn(11);
	inverseOut(51)  <= inverseIn(12);
	inverseOut(50)  <= inverseIn(13);
	inverseOut(49)  <= inverseIn(14);
	inverseOut(48)  <= inverseIn(15);
	inverseOut(47)  <= inverseIn(16);
	inverseOut(46) <= inverseIn(17);
	inverseOut(45)  <= inverseIn(18);
	inverseOut(44)  <= inverseIn(19);
	inverseOut(43)  <= inverseIn(20);
	inverseOut(42)  <= inverseIn(21);
	inverseOut(41)  <= inverseIn(22);
	inverseOut(40)  <= inverseIn(23);
	inverseOut(39)  <= inverseIn(24);
	inverseOut(38) <= inverseIn(25);
	inverseOut(37)  <= inverseIn(26);
	inverseOut(36)  <= inverseIn(27);
	inverseOut(35)  <= inverseIn(28);
	inverseOut(34)  <= inverseIn(29);
	inverseOut(33)  <= inverseIn(30);
	inverseOut(32)  <= inverseIn(31);
	inverseOut(31)  <= inverseIn(32);
	inverseOut(30) <= inverseIn(33);
	inverseOut(29)  <= inverseIn(34);
	inverseOut(28)  <= inverseIn(35);
	inverseOut(27)  <= inverseIn(36);
	inverseOut(26)  <= inverseIn(37);
	inverseOut(25)  <= inverseIn(38);
	inverseOut(24)  <= inverseIn(39);
	inverseOut(23)  <= inverseIn(40);
	inverseOut(22) <= inverseIn(41);
	inverseOut(21)  <= inverseIn(42);
	inverseOut(20)  <= inverseIn(43);
	inverseOut(19)  <= inverseIn(44);
	inverseOut(18)  <= inverseIn(45);
	inverseOut(17)  <= inverseIn(46);
	inverseOut(16)  <= inverseIn(47);
	inverseOut(15)  <= inverseIn(48);
	inverseOut(14) <= inverseIn(49);
	inverseOut(13)  <= inverseIn(50);
	inverseOut(12) <= inverseIn(51);
	inverseOut(11)  <= inverseIn(52);
	inverseOut(10)  <= inverseIn(53);
	inverseOut(9)  <= inverseIn(54);
	inverseOut(8)  <= inverseIn(55);
	inverseOut(7)  <= inverseIn(56);
	inverseOut(6) <= inverseIn(57);
	inverseOut(5)  <= inverseIn(58);
	inverseOut(4) <= inverseIn(59);
	inverseOut(3)  <= inverseIn(60);
	inverseOut(2)  <= inverseIn(61);
	inverseOut(1)  <= inverseIn(62);
	inverseOut(0)  <= inverseIn(63);
end architecture ; -- arch