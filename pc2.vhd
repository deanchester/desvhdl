library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity pc2 is
  port (
	C : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
	D : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
	K : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  ) ;
end entity ; -- pc2

architecture arch of pc2 is
	signal combined : STD_LOGIC_VECTOR(56 DOWNTO 0);
begin
	combined(58 DOWNTO 28) <= C(27 DOWNTO 0);
	combined(27 DOWNTO 0) <= D(27 DOWNTO 0);
	K(0) <= combined(14);
	K(1) <= combined(17);
	K(2) <= combined(11);
	K(3) <= combined(24);
	K(4) <= combined(1);
	K(5) <= combined(5);
	K(6) <= combined(3);
	K(7) <= combined(28);
	K(8) <= combined(15);
	K(9) <= combined(6);
	K(10) <= combined(21);
	K(11) <= combined(10);
	K(12) <= combined(23);
	K(13) <= combined(19);
	K(14) <= combined(12);
	K(15) <= combined(4);
	K(16) <= combined(26);
	K(17) <= combined(8);
	K(18) <= combined(16);
	K(19) <= combined(7);
	K(20) <= combined(27);
	K(21) <= combined(20);
	K(22) <= combined(13);
	K(23) <= combined(2);
	K(24) <= combined(41);
	K(25) <= combined(52);
	K(26) <= combined(31);
	K(27) <= combined(37);
	K(28) <= combined(47);
	K(29) <= combined(55);
	K(30) <= combined(30);
	K(31) <= combined(40);
	K(32) <= combined(51);
	K(33) <= combined(45);
	K(34) <= combined(33);
	K(35) <= combined(48);
	K(36) <= combined(44);
	K(37) <= combined(49);
	K(38) <= combined(39);
	K(39) <= combined(56);
	K(40) <= combined(34);
	K(41) <= combined(53);
	K(42) <= combined(46);
	K(43) <= combined(42);
	K(44) <= combined(50);
	K(45) <= combined(36);
	K(46) <= combined(29);
	K(47) <= combined(32);
end architecture ; -- arch