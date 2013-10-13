library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity feistelFunction is
  port (
	R : IN STD_LOGIC_VECTOR(32 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	FOUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  ) ;
end entity ; -- feistelFunction

architecture arch of feistelFunction is

begin

end architecture ; -- arch