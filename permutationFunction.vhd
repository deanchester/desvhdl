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
	permOUT(0) <= permIN(15);
	permOUT(1) <= permIN(6);
	permOUT(2) <= permIN(19);	
	permOUT(3) <= permIN(20);
	permOUT(4) <= permIN(28);
	permOUT(5) <= permIN(11);
	permOUT(6) <= permIN(27);	
	permOUT(7) <= permIN(16);	
	permOUT(8) <= permIN(0);
	permOUT(9) <= permIN(14);
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
	permOUT(22) <= permIN(2);	
	permOUT(23) <= permIN(8);
	permOUT(24) <= permIN(18);
	permOUT(25) <= permIN(12);
	permOUT(26) <= permIN(29);	
	permOUT(27) <= permIN(5);
	permOUT(28) <= permIN(21);
	permOUT(29) <= permIN(10);
	permOUT(30) <= permIN(3);	
	permOUT(31) <= permIN(24);
	
	x_out <= x_in(15) & 
	x_in(6) &
	x_in(19) & 
	x_in(20) & 
	x_in(28) & 
	x_in(11) & 
	x_in(27) & 
	x_in(16) & 
	x_in(0) & 
	x_in(14) & 
	x_in(22) & 
	x_in(25) & 
	x_in(4) & 
	x_in(17) & 
	x_in(30) & 
	x_in(9) & x_in(1) & x_in(7) & 
				x_in(23) & x_in(13) & x_in(31) & x_in(26) & x_in(2) & x_in(8) & 
				x_in(18) & x_in(12) & x_in(29) & x_in(5) & x_in(21) & x_in(10) & 
				x_in(3) & x_in(24);
	
end architecture ; -- arch