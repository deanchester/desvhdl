library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity AlgorithmDecode is
  port (
	clock : IN STD_LOGIC;
	algorithmSelect : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	mode, mode1, mode2, mode3: OUT STD_LOGIC
  ) ;
end entity ; -- AlgorithmDecode

architecture arch of AlgorithmDecode is
begin
	process(algorithmSelect)
	begin
		case algorithmSelect is 
			when "00" => 
				mode := 1;
				mode1 := 0;
			when "01" => 
				mode := 1;
				mode1 := 1;
			when "10" => 
				mode := 0;
				mode1 := 0;
				mode2 := 1;
				mode3 := 0;
			when "11" => 
				mode := 0;
				mode1 := 1;
				mode2 := 0;
				mode3 := 1;
		end case;
	end process;
	
	
end architecture ; -- arch