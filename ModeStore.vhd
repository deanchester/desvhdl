library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;

entity ModeStore is
  port (
	clock : IN STD_LOGIC;
	modeIn : IN STD_LOGIC;
	modeOut : OUT STD_LOGIC
  ) ;
end entity ; -- ModeStore

architecture arch of KeyStore is
	SIGNAL sr0Out, sr1Out, sr2Out, sr3Out, sr4Out, sr5Out, sr6Out, sr7Out, 
		sr8Out, sr9Out, sr10Out, sr11Out, sr12Out, sr13Out, sr14Out, 
		sr15Out, sr16Out, sr17Out, sr18Out, sr19Out, sr20Out, sr21Out, 
		sr22Out, sr23Out, sr24Out, sr25Out, sr26Out, sr27Out, sr28Out, 
		sr29Out, sr30Out, sr31Out, sr32Out, sr33Out, sr34Out, sr35Out, 
		sr36Out : STD_LOGIC;
begin
	if (clock'EVENT AND clock='1') then
		sr36Out <= modeIn;
		sr0Out <= sr1Out;
		sr1Out <= sr2Out;
		sr2Out <= sr3Out;
		sr3Out <= sr4Out;
		sr4Out <= sr5Out;
		sr5Out <= sr6Out;
		sr6Out <= sr7Out;
		sr7Out <= sr8Out;
		sr8Out <= sr9Out;
		sr9Out <= sr10Out;;
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
		sr31Out <= sr32Out;
		sr32Out <= sr33Out;
		sr33Out <= sr34Out;
		sr34Out <= sr35Out;
		sr35Out <= sr36Out;
		modeOut <= sr36Out;
	end if;
end architecture ; -- arch