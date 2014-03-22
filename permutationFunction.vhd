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
	permOUT(0) <=   permIN(16);
	permOUT(1) <=   permIN(25);
	permOUT(2) <=   permIN(12);
	permOUT(3) <=   permIN(11);
	permOUT(4) <=   permIN(3);
	permOUT(5) <=   permIN(20);
	permOUT(6) <=   permIN(4);
	permOUT(7) <=   permIN(15);
	permOUT(8) <=   permIN(31);
	permOUT(9) <=   permIN(17);
	permOUT(10)  <= permIN(9);
	permOUT(11)  <= permIN(6);
	permOUT(12)  <= permIN(27);
	permOUT(13)  <= permIN(14);
	permOUT(14)  <= permIN(1);
	permOUT(15)  <= permIN(22);
	permOUT(16)  <= permIN(30);
	permOUT(17)  <= permIN(24);
	permOUT(18)  <= permIN(8);
	permOUT(19)  <= permIN(18);
	permOUT(20)  <= permIN(0);
	permOUT(21)  <= permIN(5);
	permOUT(22) <=  permIN(29);
	permOUT(23) <=  permIN(23);
	permOUT(24) <=  permIN(13);
	permOUT(25) <=  permIN(19);
	permOUT(26) <=  permIN(2);
	permOUT(27) <=  permIN(26);
	permOUT(28) <=  permIN(10);
	permOUT(29) <=  permIN(21);
	permOUT(30) <=  permIN(28);
	permOUT(31) <=  permIN(7);
end architecture ; -- arch