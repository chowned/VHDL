LIBRARY ieee;
USE ieee.std_logic_1164.all ;
USE ieee.numeric_std.all ;
ENTITY Lab_1_2 IS 
	PORT (     SW :  IN STD_LOGIC_VECTOR(17 DOWNTO 0) ;
			 LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0) ;
			 LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
			 );
			 
END Lab_1_2 ;

ARCHITECTURE Behavior OF Lab_1_2 IS 		
	SIGNAL X, Y, M: STD_LOGIC_VECTOR(7 DOWNTO 0) ;
	SIGNAL		 S : STD_LOGIC ;
	BEGIN 
	x <= SW(7 DOWNTO 0) ;
	Y <= SW(15 DOWNTO 8) ;
	S <= SW(17) ;
	--M <= (NOT S AND X ) OR (S(0) AND Y) ;
	LEDG <= M ;
	LEDR <= SW ;
	M(0) <= (NOT (S) AND X(0)) OR (S AND Y(0)) ;
	M(1) <= (NOT (S) AND X(1)) OR (S AND Y(1)) ;
	M(2) <= (NOT (S) AND X(2)) OR (S AND Y(2)) ;
	M(3) <= (NOT (S) AND X(3)) OR (S AND Y(3)) ;
	M(4) <= (NOT (S) AND X(4)) OR (S AND Y(4)) ;
	M(5) <= (NOT (S) AND X(5)) OR (S AND Y(5)) ;
	M(6) <= (NOT (S) AND X(6)) OR (S AND Y(6)) ;
	M(7) <= (NOT (S) AND X(7)) OR (S AND Y(7)) ;

	
END Behavior ;
