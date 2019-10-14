LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY sync_count_16bit_block IS 
	PORT (INPUT  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			OUTPUT : OUT STD_LOGIC
			);
END sync_count_16bit_block;

ARCHITECTURE Behavior OF sync_count_16bit_block IS
	COMPONENT T_FF 
		PORT (T, Clock, Resetn : IN STD_LOGIC;
				Q : OUT STD_LOGIC);
END COMPONENT;
SIGNAL Q_s, CLK, CLR,ENBL : STD_LOGIC;
BEGIN 
ENBL <= INPUT(0);
CLK  <= INPUT(1);
CLR  <= INPUT(2);

	FF : T_FF PORT MAP (T=>ENBL, Clock=>CLK, Resetn=>CLR, Q=>Q_s);
		  OUTPUT <= INPUT(0) AND Q_s;
		  
END Behavior;
