LIBRARY ieee;
USE ieee.std_logic_1164.all ;

ENTITY 7_Segment_Display IS 
  PORT ( SW : IN STD_LOGIC_VECTOR (2 DOWNTO 0) ;
       HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
      );
END 7_Segment_Display ;
      
ARCHITECTURE Behavior OF 7_Segment_Display IS 
 SIGNAL C : STD_LOGIC_VECTOR(0 TO 2) ;
 BEGIN
 C <= SW(2 DOWNTO 0) ;
 HEX0(0) <= C(2) OR (C(1) AND NOT(C(0))) ;
 HEX0(1) <= C(2) OR (NOT(C(1)) AND C(0)) OR (C(1) AND NOT(C(0))) ; 
 HEX0(2) <= C(2) OR (NOT(C(1)) AND C(0)) OR (C(1) AND NOT(C(0))) ;
 HEX0(3) <= C(2) OR (NOT(C(1)) AND NOT(C(0)));
 HEX0(4) <= C(2) ;
 HEX0(5) <= C(2) ;
 HEX0(6) <= C(2) OR C(1) ;
 END Behavior ;
