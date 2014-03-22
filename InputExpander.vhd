library ieee ;		
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity InputExpander is
  port (
  B1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  B2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  B3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  B4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  B5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  B6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);  
  OutBit48: OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  ) ;
end entity ; -- InputExpander

architecture arch of InputExpander is

begin
	OutBit48(7 DOWNTO 0) <= B1(7 DOWNTO 0);
	OutBit48(15 DOWNTO 8) <= B2(7 DOWNTO 0);
	OutBit48(23 DOWNTO 16) <= B3(7 DOWNTO 0);
	OutBit48(31 DOWNTO 24) <= B4(7 DOWNTO 0);
	OutBit48(39 DOWNTO 32) <= B5(7 DOWNTO 0);
	OutBit48(47 DOWNTO 40) <= B6(7 DOWNTO 0);
end architecture ; -- arch