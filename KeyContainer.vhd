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
			sr1Out <= key1in;
			sr2Out <= key1in;
			sr3Out <= key2in;
			sr4Out <= key2in;
			sr5Out <= key3in;
			sr6Out <= key3in;
			sr7Out <= key4in;
			sr8Out <= key4in;
			sr9Out <= key5in;
			sr10Out <= key5in;
			sr11Out <= key6in;
			sr12Out <= key6in;
			sr13Out <= key7in;
			sr14Out <= key7in;
			sr15Out <= key8in;
			sr16Out <= key8in;
			sr17Out <= key9in;
			sr18Out <= key9in;
			sr19Out <= key10in;
			sr20Out <= key10in;
			sr21Out <= key11in;
			sr22Out <= key11in;
			sr23Out <= key12in;
			sr24Out <= key12in;
			sr25Out <= key13in;
			sr26Out <= key13in;
			sr27Out <= key14in;
			sr28Out <= key14in;
			sr29Out <= key15in;
			sr30Out <= key15in;
			sr31Out <= key16in;
			keyOut <= sr1Out;
		elsif (clock'EVENT AND clock='1' AND load='1' AND decryption='1') then
			sr31Out => key16in
			sr30Out => key15in
			sr29Out => key15in
			sr28Out => key14in
			sr27Out => key14in
			sr26Out => key13in
			sr25Out => key13in
			sr24Out => key12in
			sr23Out => key12in
			sr22Out => key11in
			sr21Out => key11in
			sr20Out => key10in
			sr19Out => key10in
			sr18Out => key9in
			sr17Out => key9in
			sr16Out => key8in
			sr15Out => key8in
			sr14Out => key7in
			sr13Out => key7in
			sr12Out => key6in
			sr11Out => key6in
			sr10Out => key5in
			sr9Out => key5in
			sr8Out => key4in
			sr7Out => key4in
			sr6Out => key3in
			sr5Out => key3in
			sr4Out => key2in
			sr3Out => key2in
			sr2Out => key1in
			sr1Out => key1in
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