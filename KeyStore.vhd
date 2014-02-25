library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity KeyStore is
  port (
	clock : IN STD_LOGIC;
	keyIn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	keyOut : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
  ) ;
end entity ; -- KeyStore

architecture arch of KeyStore is

begin

end architecture ; -- arch