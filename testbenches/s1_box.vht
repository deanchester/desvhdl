library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity s1_box_test is
end entity ; -- s1_box_test

architecture arch of s1_box_test is
	component S1Box is
		port (
			sIN: IN std_logic_VECTOR(5 downto 0);
			sOUT: OUT std_logic_VECTOR(3 downto 0)
		) ;
	end component;
	SIGNAL dataIn : STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL dataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL b_check : boolean := false;
	SHARED VARIABLE sv_check_value : std_logic_vector(3 downto 0);
	begin
	
	sBox : S1Box PORT MAP(dataIn, dataOut)
	
	
	stimulus : process
	
	PROCEDURE p_stable is begin
		dataIn := "000000";
		
	end p_stable;
	
	PROCEDURE value_at_0 is begin
		dataIn := "000000";
		sv_check_value := to_unsigned(14, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_0;
	
	PROCEDURE value_at_1 is begin
		dataIn := "000001";
		sv_check_value := to_unsigned(0, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_1;
	
	begin
		value_at_0;
		
		value_at_1;
		
	end PROCESS stimulus;
	
	
	
    -----------------------------------------
    generic_monitor : process (b_check)
     variable l:line;
    begin
      if b_check = true then
       if dataOut /= sv_check_value then
        assert false
  	       report "sOut is NOT correct"  -- not really needed just added for completeness
  	     severity warning;                   -- will not break out of simulation
  --      severity failure;                   -- if you want the simulation to stop
  		  writeline(output,l);                -- prints a blank line, since l is blank
  		  write(l, string'("****************************************************************"));
  		  writeline(output,l);                
  		  write(l, string'("******   Fault with the S-Box  							  ******"));
  		  writeline(output,l);		  
  		  write(l, string'("****************************************************************"));
  		  writeline(output,l);	              
  		  write(l, string'("at time: "));
  		  write(l, now);                      -- now is the current simulation time
  		  write(l, string'(", the data did NOT match!"));
  		  writeline(output,l);
  		  ----------------------------------------------------------------
          -- use the image package so that we can convert std_logic_vector
          -- to a string for writing out	
  	     ----------------------------------------------------------------	  
  		  write(l, string'("Expected binary value:" & image(sv_check_value)));
  	     writeline(output,l);
  		  write(l, string'("  Actual binary value:" & image(data_out)));
  		  writeline(output,l);                -- print some blank lines for better formatting
  		  writeline(output,l);
  		  writeline(output,l);
       else           -- data out is correct
  	   assert false  -- data is correct
  		  report "data_out is correct"
  		severity warning;
       end if;        -- data out check
  	 end if;         -- b_check
 	end process generic_monitor;
end architecture ; -- arch