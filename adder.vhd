library ieee; 
use ieee.std_logic_1164.all; 
entity adder is port ( A: in std_logic; 
B: in std_logic; 
O: out std_logic; 
C: out std_logic ); 
end entity adder; 
architecture behave of adder is 
begin 
process(A,B) 
begin O <= A xor B; 
C <= A and B; 
end process; 
end behave;