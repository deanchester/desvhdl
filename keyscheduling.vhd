library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity keyscheduling is
  port (
  	keyIn : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
  	key1Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key2Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key3Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key4Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key5Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key6Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key7Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key8Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key9Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key10Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key11out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key12Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key13Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key14Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key15Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
  	key16Out : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  ) ;
end entity ; -- keyscheduling

architecture arch of keyscheduling is
	component LeftShift is
		port (
			shiftIn : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
			shifted : OUT STD_LOGIC_VECTOR(27 DOWNTO 0) 
		) ;
	end component; 
	
	component pc1 is
		port (
			kIN : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
			c : OUT STD_LOGIC_VECTOR(27 DOWNTO 0);
			d : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
		) ;
	end component;
	
	component pc2 is
		port (
			C : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
			D : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
			K : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
		) ;
	end component;
	
	signal s1Left, s1Right, s2Left, s2Right, s3Left, s3Right, s4Left, s4Right, 
		s5Left, s5Right, s6Left, s6Right, s7Left, s7Right, s8Left, s8Right, s9Left,
		s9Right, s10Left, s10Right, s11Left, s11Right, s12Left, s12Right, s13Left,
		s13Right, s14Left, s14Right, s15Left, s15Right, s16Left, s16Right : STD_LOGIC_VECTOR(27 DOWNTO 0);
	
	signal s1LeftShifted, s1RightShifted, s2LeftShifted, s2RightShifted, s3LeftShifted, s3RightShifted, s4LeftShifted, s4RightShifted, 
		s5LeftShifted, s5RightShifted, s6LeftShifted, s6RightShifted, s7LeftShifted, s7RightShifted, s8LeftShifted, s8RightShifted, s9LeftShifted,
		s9RightShifted, s10LeftShifted, s10RightShifted, s11LeftShifted, s11RightShifted, s12LeftShifted, s12RightShifted, s13LeftShifted,
		s13RightShifted, s14LeftShifted, s14RightShifted, s15LeftShifted, s15RightShifted, s16LeftShifted, s16RightShifted : STD_LOGIC_VECTOR(27 DOWNTO 0);
		
	signal s3LeftShiftedShifted, s3RightShiftedShifted, s4LeftShiftedShifted, s4RightShiftedShifted, s5LeftShiftedShifted,
		s5RightShiftedShifted, s6LeftShiftedShifted, s6RightShiftedShifted, s7LeftShiftedShifted, s7RightShiftedShifted, 
		s8LeftShiftedShifted, s8RightShiftedShifted, s10LeftShiftedShifted, s10RightShiftedShifted, s11LeftShiftedShifted, 
		s11RightShiftedShifted, s12LeftShiftedShifted, s12RightShiftedShifted, s13LeftShiftedShifted, s13RightShiftedShifted, 
		s14LeftShiftedShifted, s14RightShiftedShifted, s15LeftShiftedShifted, s15RightShiftedShifted, : STD_LOGIC_VECTOR(27 DOWNTO 0);
begin
	pc1Inst : pc1 PORT MAP(keyIn, s1Left, s1Right);
	
	ls1Left : LeftShift PORT MAP (s1Left, s1LeftShifted);
	ls1Right : LeftShift PORT MAP(s1Right, s1RightShifted);
	pc2Inst1 : pc2 PORT MAP(s1LeftShifted, s1RightShifted, key1Out);
	
	ls2Left : LeftShift PORT MAP (s1LeftShifted, s2LeftShifted);
	ls2Right : LeftShift PORT MAP(s1RightShifted, s2RightShifted);
	pc2Inst2 : pc2 PORT MAP(s2LeftShifted, s2RightShifted, key2Out);

	ls3Left : LeftShift PORT MAP (s2LeftShifted, s3LeftShifted);
	ls3Right : LeftShift PORT MAP(s2RightShifted, s3RightShifted);
	ls3Left1 : LeftShift PORT MAP (s3LeftShifted, s3LeftShiftedShifted);
	ls3Right1 : LeftShift PORT MAP(s2RightShifted, s3RightShiftedShifted);
	pc2Inst3 : pc2 PORT MAP(s3LeftShiftedShifted, s3RightShiftedShifted, key3Out);
	
	ls4Left : LeftShift PORT MAP (s3LeftShiftedShifted, s4LeftShifted);
	ls4Right : LeftShift PORT MAP(s3RightShiftedShifted, s4RightShifted);
	ls4Left1 : LeftShift PORT MAP (s4LeftShifted, s4LeftShiftedShifted);
	ls4Right1 : LeftShift PORT MAP(s4RightShifted, s4RightShiftedShifted);
	pc2Inst4 : pc2 PORT MAP(s4LeftShiftedShifted, s4RightShiftedShifted, key4Out);
	
	ls5Left : LeftShift PORT MAP (s4LeftShiftedShifted, s5LeftShifted);
	ls5Right : LeftShift PORT MAP(s4RightShiftedShifted, s5RightShifted);
	ls5Left1 : LeftShift PORT MAP (s5LeftShifted, s5LeftShiftedShifted);
	ls5Right1 : LeftShift PORT MAP(s5RightShifted, s5RightShiftedShifted);
	pc2Inst5 : pc2 PORT MAP(s5LeftShiftedShifted, s5RightShiftedShifted, key5Out);
	
	ls6Left : LeftShift PORT MAP (s5LeftShiftedShifted, s6LeftShifted);
	ls6Right : LeftShift PORT MAP(s5RightShiftedShifted, s6RightShifted);
	ls6Left1 : LeftShift PORT MAP (s6LeftShifted, s6LeftShiftedShifted);
	ls6Right1 : LeftShift PORT MAP(s6RightShifted, s6RightShiftedShifted);
	pc2Inst6: pc2 PORT MAP(s6LeftShiftedShifted, s6RightShiftedShifted, key6Out);
	
	ls7Left : LeftShift PORT MAP (s6LeftShiftedShifted, s7LeftShifted);
	ls7Right : LeftShift PORT MAP(s6RightShiftedShifted, s7RightShifted);
	ls7Left1 : LeftShift PORT MAP (s7LeftShifted, s7LeftShiftedShifted);
	ls7Right1 : LeftShift PORT MAP(s7RightShifted, s7RightShiftedShifted);
	pc2Inst7: pc2 PORT MAP(s7LeftShiftedShifted, s7RightShiftedShifted, key7Out);
	
	ls8Left : LeftShift PORT MAP (s7LeftShiftedShifted, s8LeftShifted);
	ls8Right : LeftShift PORT MAP(s7RightShiftedShifted, s8RightShifted);
	ls8Left1 : LeftShift PORT MAP (s8LeftShifted, s8LeftShiftedShifted);
	ls8Right1 : LeftShift PORT MAP(s8RightShifted, s8RightShiftedShifted);
	pc2Inst8: pc2 PORT MAP(s8LeftShiftedShifted, s8RightShiftedShifted, key8Out);
	
	ls9Left : LeftShift PORT MAP (s8LeftShiftedShifted, s9LeftShifted);
	ls9Right : LeftShift PORT MAP(s8RightShiftedShifted, s9RightShifted);
	pc2Inst9 : pc2 PORT MAP(s9LeftShifted, s9RightShifted, key9Out);
	
	ls10Left : LeftShift PORT MAP (s9LeftShifted, s10LeftShifted);
	ls10Right : LeftShift PORT MAP(s9RightShifted, s10RightShifted);
	ls10Left1 : LeftShift PORT MAP (s10LeftShifted, s10LeftShiftedShifted);
	ls10Right1 : LeftShift PORT MAP(s10RightShifted, s10RightShiftedShifted);
	pc2Inst10: pc2 PORT MAP(s10LeftShiftedShifted, s10RightShiftedShifted, key10Out);
	
	ls11Left : LeftShift PORT MAP (s10LeftShiftedShifted, s11LeftShifted);
	ls11Right : LeftShift PORT MAP(s10RightShiftedShifted, s11RightShifted);
	ls11Left1 : LeftShift PORT MAP (s11LeftShifted, s11LeftShiftedShifted);
	ls11Right1 : LeftShift PORT MAP(s11RightShifted, s11RightShiftedShifted);
	pc2Inst11: pc2 PORT MAP(s11LeftShiftedShifted, s11RightShiftedShifted, key11Out);
	
	ls12Left : LeftShift PORT MAP (s11LeftShiftedShifted, s12LeftShifted);
	ls12Right : LeftShift PORT MAP(s11RightShiftedShifted, s12RightShifted);
	ls12Left1 : LeftShift PORT MAP (s12LeftShifted, s12LeftShiftedShifted);
	ls12Right1 : LeftShift PORT MAP(s12RightShifted, s12RightShiftedShifted);
	pc2Inst12: pc2 PORT MAP(s12LeftShiftedShifted, s12RightShiftedShifted, key12Out);
	
	ls13Left : LeftShift PORT MAP (s12LeftShiftedShifted, s13LeftShifted);
	ls13Right : LeftShift PORT MAP(s12RightShiftedShifted, s13RightShifted);
	ls13Left1 : LeftShift PORT MAP (s13LeftShifted, s13LeftShiftedShifted);
	ls13Right1 : LeftShift PORT MAP(s13RightShifted, s13RightShiftedShifted);
	pc2Inst13: pc2 PORT MAP(s13LeftShiftedShifted, s13RightShiftedShifted, key13Out);
	
	ls14Left : LeftShift PORT MAP (s13LeftShiftedShifted, s14LeftShifted);
	ls14Right : LeftShift PORT MAP(s13RightShiftedShifted, s14RightShifted);
	ls14Left1 : LeftShift PORT MAP (s14LeftShifted, s14LeftShiftedShifted);
	ls14Right1 : LeftShift PORT MAP(s14RightShifted, s14RightShiftedShifted);
	pc2Inst14: pc2 PORT MAP(s14LeftShiftedShifted, s14RightShiftedShifted, key14Out);
	
	ls15Left : LeftShift PORT MAP (s14LeftShiftedShifted, s15LeftShifted);
	ls15Right : LeftShift PORT MAP(s14RightShiftedShifted, s15RightShifted);
	ls15Left1 : LeftShift PORT MAP (s15LeftShifted, s15LeftShiftedShifted);
	ls15Right1 : LeftShift PORT MAP(s15RightShifted, s15RightShiftedShifted);
	pc2Inst15: pc2 PORT MAP(s15LeftShiftedShifted, s15RightShiftedShifted, key15Out);
		
	ls16Left : LeftShift PORT MAP (s15LeftShiftedShifted, s16sLeftShifted);
	ls16Right : LeftShift PORT MAP(s15RightShiftedShifted, s16RightShifted);
	pc16Inst9 : pc2 PORT MAP(s16LeftShifted, s16RightShifted, key16Out);
end architecture ; -- arch