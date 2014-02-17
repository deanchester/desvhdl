library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity KeyContainer is
  port (
	clock, load, decryption: IN STD_LOGIC;
	key1In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key2In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key3In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key4In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key5In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key6In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key7In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key8In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key9In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key10In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key11In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key12In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key13In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key14In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key15In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	key16In : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
	
	keyOut : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  ) ;
end entity ; -- KeyContainer

architecture arch of KeyContainer is
	signal sr1Out, sr2Out, sr3Out, sr4Out, sr5Out, sr6Out, sr7Out, sr8Out, sr9Out,
		sr10Out, sr11Out, sr12Out, sr13Out, sr14Out, sr15Out, sr16Out, sr17Out,
		sr18Out, sr19Out, sr20Out, sr21Out, sr22Out, sr23Out, sr24Out, sr25Out,
		sr26Out, sr27Out, sr28Out, sr29Out, sr30Out,
		sr31Out: STD_LOGIC_VECTOR(47 DOWNTO 0);
begin

	process(clock, load, decryption)
	begin 
		if (clock'EVENT AND clock='1' AND load='1' AND decryption='0') then
			sr1Out <= key1In;
			sr3Out <= key2In;
			sr5Out <= key3In;
			sr7Out <= key4In;
			sr9Out <= key5In;
			sr11Out <= key6In;
			sr13Out <= key7In;
			sr15Out <= key8In;
			sr17Out <= key9In;
			sr19Out <= key10In;
			sr21Out <= key11In;
			sr23Out <= key12In;
			sr25Out <= key13In;
			sr27Out <= key14In;
			sr29Out <= key15In;
			sr31Out <= key16In;
			keyOut <= sr1Out;
		if (clock'EVENT AND clock='1' AND load='1' AND decryption='1') then
			sr1Out <= key16In;
			sr3Out <= key15In;
			sr5Out <= key14In;
			sr7Out <= key13In;
			sr9Out <= key12In;
			sr11Out <= key11In;
			sr13Out <= key10In;
			sr15Out <= key9In;
			sr17Out <= key8In;
			sr19Out <= key7In;
			sr21Out <= key6In;
			sr23Out <= key5In;
			sr25Out <= key4In;
			sr27Out <= key3In;
			sr29Out <= key2In;
			sr31Out <= key1In;
			keyOut <= sr1Out;
		elsif (clock'EVENT AND clock='1' AND load='0') then
			sr1Out <= sr2Out;
			sr2Out <= sr3Out;
			sr3Out <= sr4Out;
			sr4Out <= sr5Out;
			sr5Out <= sr6Out;
			sr6Out <= sr7Out;
			sr7Out <= sr8Out;
			sr8Out <= sr9Out;
			sr9Out <= sr10Out;
			sr10Out <= sr11Out;
			sr11Out <= sr12Out;
			sr12Out <= sr13Out;
			sr13Out <= sr14Out;
			sr14Out <= sr15Out;
			sr15Out <= sr16Out;
			sr16Out <= sr17Out;
			sr17Out <= sr18Out;
			sr18Out <= sr19Out;
			sr19Out <= sr20Out;
			sr20Out <= sr21Out;
			sr21Out <= sr22Out;
			sr22Out <= sr23Out;
			sr23Out <= sr24Out;
			sr24Out <= sr25Out;
			sr25Out <= sr26Out;
			sr26Out <= sr27Out;
			sr27Out <= sr28Out;
			sr28Out <= sr29Out;
			sr29Out <= sr30Out;
			sr30Out <= sr31Out;
			keyOut <= sr1Out;
		end if;
	end process;
end architecture ; -- arch