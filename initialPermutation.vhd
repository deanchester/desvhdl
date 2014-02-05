library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;
                    
-- Takes an input which is the plain text to be encrypted. 
-- Outputs the inital permutation for DES. d
entity initialPermutation is
  port (
	plain : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	permutated : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
end entity ; -- initialPermutation

architecture arch of initialPermutation is

begin
    permutated(0)<=plain(57);
    permutated(1)<=plain(49);
    permutated(2)<=plain(41);
    permutated(3)<=plain(33);
    permutated(4)<=plain(25);
    permutated(5)<=plain(17);
    permutated(6)<=plain(9);
    permutated(7)<=plain(1);

    permutated(8)<=plain(59);
    permutated(9)<=plain(51);
    permutated(10)<=plain(43);
    permutated(11)<=plain(35);
    permutated(12)<=plain(27);
    permutated(13)<=plain(19);
    permutated(14)<=plain(11);
    permutated(15)<=plain(3);

    permutated(16)<=plain(61);
    permutated(17)<=plain(53);
    permutated(18)<=plain(45);
    permutated(19)<=plain(37);
    permutated(20)<=plain(29);
    permutated(21)<=plain(21);
    permutated(22)<=plain(13);
    permutated(23)<=plain(5);

    permutated(24)<=plain(63);
    permutated(25)<=plain(55);
    permutated(26)<=plain(47);
    permutated(27)<=plain(39);
    permutated(28)<=plain(31);
    permutated(29)<=plain(23);
    permutated(30)<=plain(15);
    permutated(31)<=plain(7);

    permutated(32)<=plain(56);
    permutated(33)<=plain(48);
    permutated(34)<=plain(40);
    permutated(35)<=plain(32);
    permutated(36)<=plain(24);
    permutated(37)<=plain(16);
    permutated(38)<=plain(8);
    permutated(39)<=plain(0);

    permutated(40)<=plain(58);
    permutated(41)<=plain(50);
    permutated(42)<=plain(42);
    permutated(43)<=plain(34);
    permutated(44)<=plain(26);
    permutated(45)<=plain(18);
    permutated(46)<=plain(10);
    permutated(47)<=plain(2);

    permutated(48)<=plain(60);
    permutated(49)<=plain(52);
    permutated(50)<=plain(44);
    permutated(51)<=plain(36);
    permutated(52)<=plain(28);
    permutated(53)<=plain(20);
    permutated(54)<=plain(12);
    permutated(55)<=plain(4);

    permutated(56)<=plain(62);
    permutated(57)<=plain(54);
    permutated(58)<=plain(46);
    permutated(59)<=plain(38);
    permutated(60)<=plain(30);
    permutated(61)<=plain(22);
    permutated(62)<=plain(14);
    permutated(63)<=plain(6);
end architecture ; -- arch