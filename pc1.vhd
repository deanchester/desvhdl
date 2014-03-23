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
	
	c(0)  <= kIN(28);
    c(1)  <= kIN(20);
	c(2)  <= kIN(12);
	c(3)  <= kIN(4);
   	c(4)  <= kIN(61);
	c(5)  <= kIN(53);
	c(6)  <= kIN(45);	
	c(7)  <= kIN(37);
    c(8)  <= kIN(29);
	c(9)  <= kIN(21);
	c(10) <= kIN(13);
   	c(11) <= kIN(5);
	c(12) <= kIN(62);
	c(13) <= kIN(54); 	
	c(14) <= kIN(46);
    c(15) <= kIN(38);
	c(16) <= kIN(30);
	c(17) <= kIN(22);
   	c(18) <= kIN(14);
	c(19) <= kIN(6);
	c(20) <= kIN(63);	
	c(21) <= kIN(55);
    c(22) <= kIN(47);
	c(23) <= kIN(39);
	c(24) <= kIN(31);
   	c(25) <= kIN(23);
	c(26) <= kIN(15);
	c(27) <= kIN(7);      
	
	d(0)  <= kIN(60);
    d(1)  <= kIN(52);
	d(2)  <= kIN(44);
	d(3)  <= kIN(36);
   	d(4)  <= kIN(59);
	d(5)  <= kIN(51);
	d(6)  <= kIN(43);	
	d(7)  <= kIN(35);
    d(8)  <= kIN(27);
	d(9)  <= kIN(19);
	d(10) <= kIN(11);
   	d(11) <= kIN(3);
	d(12) <= kIN(58);
	d(13) <= kIN(50);	
	d(14) <= kIN(42);
    d(15) <= kIN(34);
	d(16) <= kIN(26);
	d(17) <= kIN(18);
   	d(18) <= kIN(10);
	d(19) <= kIN(2);
	d(20) <= kIN(57);
	d(21) <= kIN(49);
    d(22) <= kIN(41);
	d(23) <= kIN(33);
	d(24) <= kIN(25);
   	d(25) <= kIN(17);
	d(26) <= kIN(9);
	d(27) <= kIN(1);

end architecture ; -- arch