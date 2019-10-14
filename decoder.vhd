LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY decoder IS
	PORT ( I_D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 HEX : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
			);
		
END decoder;

ARCHITECTURE Behavior OF decoder IS
BEGIN

HEX(0)<= (NOT(I_D(3)) AND NOT(I_D(2)) AND NOT(I_D(1)) AND I_D(0)) OR (NOT(I_D(3)) AND I_D(2) AND NOT(I_D(1)) AND NOT(I_D(0)));
HEX(1)<= (I_D(2) AND I_D(1) AND NOT(I_D(0))) OR (I_D(3) AND I_D(2) AND NOT(I_D(0))) OR (I_D(3) AND I_D(2) AND I_D(3)) OR (NOT(I_D(3)) AND I_D(2) AND NOT(I_D(1)) AND I_D(0));
HEX(2)<= (I_D(3) AND I_D(2) AND NOT(I_D(0))) OR (I_D(3) AND I_D(2) AND I_D(1)) OR (NOT(I_D(3)) AND NOT(I_D(2)) AND I_D(1) AND NOT(I_D(0))); 
HEX(3)<= (NOT(I_D(2)) AND NOT(I_D(1)) AND I_D(0)) OR (I_D(2) AND  I_D(1) AND I_D(0)) OR (NOT(I_D(3)) AND I_D(2) AND NOT(I_D(1)) AND NOT(I_D(0))) OR (I_D(3) AND NOT(I_D(2)) AND I_D(1) AND NOT(I_D(0)));
HEX(4)<= (NOT(I_D(3)) AND I_D(0)) OR (NOT(I_D(2)) AND NOT(I_D(1)) AND I_D(0)) OR (NOT(I_D(3)) AND I_D(2) AND NOT(I_D(1)));
HEX(5)<= (NOT(I_D(3)) AND NOT(I_D(2)) AND I_D(0)) OR (NOT(I_D(3)) AND NOT(I_D(2)) AND I_D(1)) OR (NOT(I_D(3)) AND I_D(1) AND I_D(0));
HEX(6)<= (NOT(I_D(3)) AND NOT(I_D(2)) AND NOT(I_D(1))) OR (I_D(3) AND I_D(2) AND NOT(I_D(1))) OR (NOT(I_D(3)) AND I_D(2) AND I_D(1) AND I_D(0));


END Behavior;