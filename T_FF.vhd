LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY T_FF IS
PORT (T, Clock, Resetn : IN STD_LOGIC;
      Q : BUFFER STD_LOGIC);
END T_FF;


ARCHITECTURE Behavior OF T_FF IS
BEGIN

PROCESS (Clock, Resetn)
BEGIN
IF (Resetn = '0') THEN -- asynchronous clear
Q <= '0';
ELSIF (Clock'EVENT AND Clock = '1') THEN
Q <= T XOR Q;


END IF;
END PROCESS;
END Behavior;