library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity CryptoCoreStatemachine is
  port (
	clock, start, reset : IN STD_LOGIC;
	done : OUT STD_LOGIC;
  ) ;
end entity ; -- CryptoCoreStatemachine

architecture arch of CryptoCoreStatemachine is

begin

end architecture ; -- arch