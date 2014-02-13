library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity LeftShift is
	port (
		shiftIn : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
		shifted : OUT STD_LOGIC_VECTOR(27 DOWNTO 0) 
	) ;
end entity ; -- LeftShift

architecture arch of LeftShift is

begin
	shifted(0) <= shiftIn(27);
	shifted(27 DOWNTO 1) <= shiftIn(26 DOWNTO 0);
end architecture ; -- arch