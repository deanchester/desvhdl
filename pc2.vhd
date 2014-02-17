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
	signal combined : STD_LOGIC_VECTOR(55 DOWNTO 0);
begin
	combined(55 DOWNTO 28) <= C;
	combined(27 DOWNTO 0) <= D;
	K(0) <= combined(13);
	K(1) <= combined(16);
	K(2) <= combined(10);
	K(3) <= combined(23);
	K(4) <= combined(0);
	K(5) <= combined(4);
	K(6) <= combined(2);
	K(7) <= combined(27);
	K(8) <= combined(14);
	K(9) <= combined(5);
	K(10) <= combined(20);
	K(11) <= combined(9);
	K(12) <= combined(22);
	K(13) <= combined(18);
	K(14) <= combined(11);
	K(15) <= combined(3);
	K(16) <= combined(25);
	K(17) <= combined(7);
	K(18) <= combined(15);
	K(19) <= combined(6);
	K(20) <= combined(26);
	K(21) <= combined(19);
	K(22) <= combined(12);
	K(23) <= combined(1);
	K(24) <= combined(40);
	K(25) <= combined(51);
	K(26) <= combined(30);
	K(27) <= combined(36);
	K(28) <= combined(46);
	K(29) <= combined(54);
	K(30) <= combined(29);
	K(31) <= combined(39);
	K(32) <= combined(50);
	K(33) <= combined(44);
	K(34) <= combined(32);
	K(35) <= combined(47);
	K(36) <= combined(43);
	K(37) <= combined(48);
	K(38) <= combined(38);
	K(39) <= combined(55);
	K(40) <= combined(33);
	K(41) <= combined(52);
	K(42) <= combined(45);
	K(43) <= combined(41);
	K(44) <= combined(49);
	K(45) <= combined(35);
	K(46) <= combined(28);
	K(47) <= combined(31);
end architecture ; -- arch