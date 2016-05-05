library ieee; 
use ieee.std_logic_1164.all; 
entity fulladder is 
port ( A: in std_logic; B: in std_logic; CI: in std_logic; O: out std_logic; CO: out std_logic ); 
end entity fulladder; 
architecture behave of fulladder is 
component adder is 
port ( A: in std_logic; B: in std_logic; O: out std_logic; C: out std_logic ); 
end component adder; 
signal O1_result: std_logic; 
signal C0_result: std_logic; 
signal C1_result: std_logic; 
begin 
adder0: adder port map ( A => CI, B => O1_result, O => O, C => C0_result ); 
adder1: adder port map ( A => A, B => B, O => O1_result, C => C1_result ); 
process(C0_result,C1_result) 
begin 
CO <= C0_result or C1_result; 
end process; 
end behave;