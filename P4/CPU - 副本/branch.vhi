
-- VHDL Instantiation Created from source file branch.vhd -- 23:46:23 11/04/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT branch
	PORT(
		branch : IN std_logic;
		equal : IN std_logic;          
		PC_sel : OUT std_logic
		);
	END COMPONENT;

	Inst_branch: branch PORT MAP(
		branch => ,
		equal => ,
		PC_sel => 
	);


