library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity feistelFunction_tb is
end entity ; -- feistelFunction_tb

architecture arch of feistelFunction_tb is
	COMPONENT feistelFunction is
	  port (
			fIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			K : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			fOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	  ) ;
	end COMPONENT;
	
	SIGNAL b_check : boolean := false;
	SHARED VARIABLE sv_check_value : std_logic_vector(31 downto 0);
	SIGNAL fin : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL key : STD_LOGIC_VECTOR(47 DOWNTO 0);
	SIGNAL fout : STD_LOGIC_VECTOR(31 DOWNTO 0);
begin
	ff : feistelFunction PORT MAP(fin, key, fout)
	stimulus : process
		PROCEDURE value is begin
			fin := STD_LOGIC_VECTOR(to_unsigned(0, 32));
			key := STD_LOGIC_VECTOR(to_unsigned(0, 48));
			sv_check_value := to_unsigned(0, 32); -- expected value
			b_check <= true;         -- enable a check
			wait for (100 ns);
			b_check <= false;
		end value_at_0;
		begin
			value;
	end stimulus;
	
	
	
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