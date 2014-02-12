library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity PIPOShift64 is
  port (
	clock : IN STD_LOGIC;
	dataIN : IN STD_LOGIC_VECTOR(64 DOWNTO 0);
	dataOUT : OUT STD_LOGIC_VECTOR(64 DOWNTO 0);
  ) ;
end entity ; -- PIPOShift32

architecture arch of PIPOShift64 is

begin
	process(clock)
	begin 
		if (clock'EVENT AND clock='1') then
			dataOUT <= dataIN;
		end if;
	end process;
end architecture ; -- arch