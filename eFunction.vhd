library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity eFunction is
  port (
	eIN : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	eOUT : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  ) ;
end entity ; -- eFunction

architecture arch of eFunction is

begin
   eOUT(0) <= eIN(31);
   eOUT(1) <= eIN(0);
   eOUT(2) <= eIN(1);
   eOUT(3) <= eIN(2);
   eOUT(4) <= eIN(3);
   eOUT(5) <= eIN(4);

   eOUT(6) <= eIN(3);
   eOUT(7) <= eIN(4);
   eOUT(8) <= eIN(5);
   eOUT(9) <= eIN(6);
   eOUT(10) <= eIN(7);
   eOUT(11) <= eIN(8);

   eOUT(12) <= eIN(7);
   eOUT(13) <= eIN(8);
   eOUT(14) <= eIN(9);
   eOUT(15) <= eIN(10);
   eOUT(16) <= eIN(11);
   eOUT(17) <= eIN(12);

   eOUT(18) <= eIN(11);
   eOUT(19) <= eIN(12);
   eOUT(20) <= eIN(13);
   eOUT(21) <= eIN(14);
   eOUT(22) <= eIN(15);
   eOUT(23) <= eIN(16);

   eOUT(24) <= eIN(15);
   eOUT(25) <= eIN(16);
   eOUT(26) <= eIN(17);
   eOUT(27) <= eIN(18);
   eOUT(28) <= eIN(19);
   eOUT(29) <= eIN(20); 

   eOUT(30) <= eIN(19);
   eOUT(31) <= eIN(20);
   eOUT(32) <= eIN(21);
   eOUT(33) <= eIN(22);
   eOUT(34) <= eIN(23);
   eOUT(35) <= eIN(24);

   eOUT(36) <= eIN(23);
   eOUT(37) <= eIN(24);
   eOUT(38) <= eIN(25);
   eOUT(39) <= eIN(26);
   eOUT(40) <= eIN(27);
   eOUT(41) <= eIN(28);

   eOUT(42) <= eIN(27);
   eOUT(43) <= eIN(28);
   eOUT(44) <= eIN(29);
   eOUT(45) <= eIN(30);
   eOUT(46) <= eIN(31);
   eOUT(47) <= eIN(0);
end architecture ; -- arch