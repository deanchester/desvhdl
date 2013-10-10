library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity permutationFunction is
  port (
	permIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);	
	permOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  ) ;
end entity ; -- permutationFunction

architecture arch of permutationFunction is

begin
	permOUT(0)  <= permIN(15);
	permOUT(1)  <= permIN(6);
	permOUT(2)  <= permIN(19);	
	permOUT(3)  <= permIN(20);
	
	permOUT(4)  <= permIN(28);
	permOUT(5)  <= permIN(11);
	permOUT(6)  <= permIN(27);	
	permOUT(7)  <= permIN(16);
	
	permOUT(8)  <= permIN(0);
	permOUT(9)  <= permIN(14);
	permOUT(10)  <= permIN(22);	
	permOUT(11)  <= permIN(25);
	
	permOUT(12)  <= permIN(4);
	permOUT(13)  <= permIN(17);
	permOUT(14)  <= permIN(30);	
	permOUT(15)  <= permIN(9);
	
	permOUT(16)  <= permIN(1);
	permOUT(17)  <= permIN(7);
	permOUT(18)  <= permIN(23);	
	permOUT(19)  <= permIN(13);
	
	permOUT(20)  <= permIN(31);
	permOUT(21)  <= permIN(26);
	permOUT(22)  <= permIN(2);	
	permOUT(23)  <= permIN(8);
	
	permOUT(24)  <= permIN(18);
	permOUT(25)  <= permIN(12);
	permOUT(26)  <= permIN(29);	
	permOUT(27)  <= permIN(5);
	
	permOUT(28)  <= permIN(21);
	permOUT(29)  <= permIN(10);
	permOUT(30)  <= permIN(3);	
	permOUT(31)  <= permIN(24);
end architecture ; -- arch