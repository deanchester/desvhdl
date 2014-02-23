library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity s8_box_test is
end entity ; -- s1_box_test

architecture arch of s8_box_test is
	component S8Box is
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
	
	sBox : S8Box PORT MAP(dataIn, dataOut)
	
	
	stimulus : process
	
	PROCEDURE p_stable is begin
		dataIn := "000000";
	end p_stable;
	
	PROCEDURE value_at_0 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(0, 6));
		sv_check_value := to_unsigned(13, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_0;

	PROCEDURE value_at_1 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(1, 6));
		sv_check_value := to_unsigned(2, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_1;

	PROCEDURE value_at_2 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(2, 6));
		sv_check_value := to_unsigned(8, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_2;

	PROCEDURE value_at_3 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(3, 6));
		sv_check_value := to_unsigned(4, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_3;

	PROCEDURE value_at_4 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(4, 6));
		sv_check_value := to_unsigned(6, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_4;

	PROCEDURE value_at_5 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(5, 6));
		sv_check_value := to_unsigned(15, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_5;

	PROCEDURE value_at_6 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(6, 6));
		sv_check_value := to_unsigned(11, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_6;

	PROCEDURE value_at_7 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(7, 6));
		sv_check_value := to_unsigned(1, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_7;

	PROCEDURE value_at_8 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(8, 6));
		sv_check_value := to_unsigned(10, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_8;

	PROCEDURE value_at_9 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(9, 6));
		sv_check_value := to_unsigned(9, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_9;

	PROCEDURE value_at_10 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(10, 6));
		sv_check_value := to_unsigned(3, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_10;

	PROCEDURE value_at_11 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(11, 6));
		sv_check_value := to_unsigned(14, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_11;

	PROCEDURE value_at_12 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(12, 6));
		sv_check_value := to_unsigned(5, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_12;

	PROCEDURE value_at_13 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(13, 6));
		sv_check_value := to_unsigned(0, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_13;

	PROCEDURE value_at_14 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(14, 6));
		sv_check_value := to_unsigned(12, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_14;

	PROCEDURE value_at_15 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(15, 6));
		sv_check_value := to_unsigned(7, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_15;

	PROCEDURE value_at_16 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(16, 6));
		sv_check_value := to_unsigned(1, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_16;

	PROCEDURE value_at_17 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(17, 6));
		sv_check_value := to_unsigned(15, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_17;

	PROCEDURE value_at_18 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(18, 6));
		sv_check_value := to_unsigned(13, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_18;

	PROCEDURE value_at_19 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(19, 6));
		sv_check_value := to_unsigned(8, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_19;

	PROCEDURE value_at_20 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(20, 6));
		sv_check_value := to_unsigned(10, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_20;

	PROCEDURE value_at_21 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(21, 6));
		sv_check_value := to_unsigned(3, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_21;

	PROCEDURE value_at_22 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(22, 6));
		sv_check_value := to_unsigned(7, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_22;

	PROCEDURE value_at_23 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(23, 6));
		sv_check_value := to_unsigned(4, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_23;

	PROCEDURE value_at_24 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(24, 6));
		sv_check_value := to_unsigned(12, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_24;

	PROCEDURE value_at_25 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(25, 6));
		sv_check_value := to_unsigned(5, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_25;

	PROCEDURE value_at_26 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(26, 6));
		sv_check_value := to_unsigned(6, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_26;

	PROCEDURE value_at_27 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(27, 6));
		sv_check_value := to_unsigned(11, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_27;

	PROCEDURE value_at_28 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(28, 6));
		sv_check_value := to_unsigned(0, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_28;

	PROCEDURE value_at_29 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(29, 6));
		sv_check_value := to_unsigned(14, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_29;

	PROCEDURE value_at_30 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(30, 6));
		sv_check_value := to_unsigned(9, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_30;

	PROCEDURE value_at_31 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(31, 6));
		sv_check_value := to_unsigned(2, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_31;

	PROCEDURE value_at_32 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(32, 6));
		sv_check_value := to_unsigned(7, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_32;

	PROCEDURE value_at_33 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(33, 6));
		sv_check_value := to_unsigned(11, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_33;

	PROCEDURE value_at_34 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(34, 6));
		sv_check_value := to_unsigned(4, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_34;

	PROCEDURE value_at_35 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(35, 6));
		sv_check_value := to_unsigned(1, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_35;

	PROCEDURE value_at_36 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(36, 6));
		sv_check_value := to_unsigned(9, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_36;

	PROCEDURE value_at_37 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(37, 6));
		sv_check_value := to_unsigned(12, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_37;

	PROCEDURE value_at_38 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(38, 6));
		sv_check_value := to_unsigned(14, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_38;

	PROCEDURE value_at_39 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(39, 6));
		sv_check_value := to_unsigned(2, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_39;

	PROCEDURE value_at_40 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(40, 6));
		sv_check_value := to_unsigned(0, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_40;

	PROCEDURE value_at_41 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(41, 6));
		sv_check_value := to_unsigned(6, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_41;

	PROCEDURE value_at_42 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(42, 6));
		sv_check_value := to_unsigned(10, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_42;

	PROCEDURE value_at_43 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(43, 6));
		sv_check_value := to_unsigned(13, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_43;

	PROCEDURE value_at_44 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(44, 6));
		sv_check_value := to_unsigned(15, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_44;

	PROCEDURE value_at_45 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(45, 6));
		sv_check_value := to_unsigned(3, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_45;

	PROCEDURE value_at_46 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(46, 6));
		sv_check_value := to_unsigned(5, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_46;

	PROCEDURE value_at_47 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(47, 6));
		sv_check_value := to_unsigned(8, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_47;

	PROCEDURE value_at_48 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(48, 6));
		sv_check_value := to_unsigned(2, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_48;

	PROCEDURE value_at_49 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(49, 6));
		sv_check_value := to_unsigned(1, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_49;

	PROCEDURE value_at_50 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(50, 6));
		sv_check_value := to_unsigned(14, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_50;

	PROCEDURE value_at_51 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(51, 6));
		sv_check_value := to_unsigned(7, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_51;

	PROCEDURE value_at_52 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(52, 6));
		sv_check_value := to_unsigned(4, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_52;

	PROCEDURE value_at_53 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(53, 6));
		sv_check_value := to_unsigned(10, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_53;

	PROCEDURE value_at_54 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(54, 6));
		sv_check_value := to_unsigned(8, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_54;

	PROCEDURE value_at_55 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(55, 6));
		sv_check_value := to_unsigned(13, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_55;

	PROCEDURE value_at_56 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(56, 6));
		sv_check_value := to_unsigned(15, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_56;

	PROCEDURE value_at_57 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(57, 6));
		sv_check_value := to_unsigned(12, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_57;

	PROCEDURE value_at_58 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(58, 6));
		sv_check_value := to_unsigned(9, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_58;

	PROCEDURE value_at_59 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(59, 6));
		sv_check_value := to_unsigned(0, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_59;

	PROCEDURE value_at_60 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(60, 6));
		sv_check_value := to_unsigned(3, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_60;

	PROCEDURE value_at_61 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(61, 6));
		sv_check_value := to_unsigned(5, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_61;

	PROCEDURE value_at_62 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(62, 6));
		sv_check_value := to_unsigned(6, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_62;

	PROCEDURE value_at_63 is begin
		dataIn := STD_LOGIC_VECTOR(to_unsigned(63, 6));
		sv_check_value := to_unsigned(11, 4); -- expected value
		b_check <= true;         -- enable a check
		wait for (100 ns);
		b_check <= false;
	end value_at_63;

	begin
		value_at_0;
		value_at_1;
		value_at_2;
		value_at_3;
		value_at_4;
		value_at_5;
		value_at_6;
		value_at_7;
		value_at_8;
		value_at_9;
		value_at_10;
		value_at_11;
		value_at_12;
		value_at_13;
		value_at_14;
		value_at_15;
		value_at_16;
		value_at_17;
		value_at_18;
		value_at_19;
		value_at_20;
		value_at_21;
		value_at_22;
		value_at_23;
		value_at_24;
		value_at_25;
		value_at_26;
		value_at_27;
		value_at_28;
		value_at_29;
		value_at_30;
		value_at_31;
		value_at_32;
		value_at_33;
		value_at_34;
		value_at_35;
		value_at_36;
		value_at_37;
		value_at_38;
		value_at_39;
		value_at_40;
		value_at_41;
		value_at_42;
		value_at_43;
		value_at_44;
		value_at_45;
		value_at_46;
		value_at_47;
		value_at_48;
		value_at_49;
		value_at_50;
		value_at_51;
		value_at_52;
		value_at_53;
		value_at_54;
		value_at_55;
		value_at_56;
		value_at_57;
		value_at_58;
		value_at_59;
		value_at_60;
		value_at_61;
		value_at_62;
		value_at_63;
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