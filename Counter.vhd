library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Counter is
	port(clock, reset: in STD_LOGIC;
		cOut: out STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
end Counter;
 
architecture Behavioral of Counter is
   signal temp: STD_LOGIC_VECTOR(1 DOWNTO 0);
begin   
	process(clock, reset)
	begin
		if reset='1' then
			temp <= "0000";
		elsif(clock'event and clock='1') then
			temp <= temp + 1;
		end if;
	end process;
	cOut <= temp;
end Behavioral;
