LIBRARY ieee;
USE ieee.std_logic_1164.all ;
USE ieee.numeric_std.all ;
ENTITY Mux5to1 IS
	PORT (     In1 , In2,In3, In4, In5: IN STD_LOGIC ;
				   S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
					M : OUT STD_LOGIC
			 );

END Mux5to1 ;

ARCHITECTURE Behavior OF Mux5to1 IS
	SIGNAL m1,m2,m3 : STD_LOGIC ;
	COMPONENT Mux2to1
		PORT ( In1 , In2, Sel : IN STD_LOGIC ;
					U : OUT STD_LOGIC 
			 );
	 END COMPONENT ;
	 
	BEGIN
	Mux1: Mux2to1 PORT MAP 
		(In1, In2, S(0), m1) ;
	Mux2: Mux2to1 PORT MAP 
		(In3, In4, S(0), m2) ;
	Mux3: Mux2to1 PORT MAP 
		(m1, m2, S(1), m3) ;
	Mux4: Mux2to1 PORT MAP 
		(m3, In5, S(2), M) ;
		
	 
	END Behavior ;