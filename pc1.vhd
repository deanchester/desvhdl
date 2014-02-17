library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity pc1 is
  port (
	kIN : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	c : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
	d : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  ) ;
end entity ; -- pc1

architecture arch of pc1 is

begin
	
	c(0) <= kIN(56);
    c(1) <= kIN(48);
	c(2) <= kIN(40);
	c(3) <= kIN(32);
   	c(4) <= kIN(24);
	c(5) <= kIN(16);
	c(6) <= kIN(8);
	
	c(7) <= kIN(0);
    c(8) <= kIN(57);
	c(9) <= kIN(49);
	c(10) <= kIN(41);
   	c(11) <= kIN(33);
	c(12) <= kIN(25);
	c(13) <= kIN(17); 
	
	c(14) <= kIN(9);
    c(15) <= kIN(1);
	c(16) <= kIN(58);
	c(17) <= kIN(50);
   	c(18) <= kIN(42);
	c(19) <= kIN(34);
	c(20) <= kIN(26);
	
	c(21) <= kIN(18);
    c(22) <= kIN(10);
	c(23) <= kIN(2);
	c(24) <= kIN(59);
   	c(25) <= kIN(51);
	c(26) <= kIN(43);
	c(27) <= kIN(35);      
	
	d(0) <= kIN(62);
    d(1) <= kIN(54);
	d(2) <= kIN(46);
	d(3) <= kIN(38);
   	d(4) <= kIN(30);
	d(5) <= kIN(22);
	d(6) <= kIN(15);
	
	d(7) <= kIN(6);
    d(8) <= kIN(61);
	d(9) <= kIN(53);
	d(10) <= kIN(45);
   	d(11) <= kIN(37);
	d(12) <= kIN(29);
	d(13) <= kIN(21); 
	
	d(14) <= kIN(13);
    d(15) <= kIN(5);
	d(16) <= kIN(60);
	d(17) <= kIN(52);
   	d(18) <= kIN(44);
	d(19) <= kIN(36);
	d(20) <= kIN(28);
	
	d(21) <= kIN(20);
    d(22) <= kIN(12);
	d(23) <= kIN(4);
	d(24) <= kIN(27);
   	d(25) <= kIN(19);
	d(26) <= kIN(11);
	d(27) <= kIN(3);

end architecture ; -- arch