library ieee; 
use ieee.std_logic_1164.all; 
entity generic_adder is 
generic ( bits: integer ); 
port ( A: in std_logic_vector(bits-1 downto 0); 
B: in std_logic_vector(bits-1 downto 0); 
CI: in std_logic; 
O: out std_logic_vector(bits-1 downto 0); 
CO: out std_logic ); 
end entity generic_adder; 
architecture behave of generic_adder is 
component fulladder is 
port ( 
A: in std_logic; 
B: in std_logic; 
CI: in std_logic; 
O: out std_logic; 
CO: out std_logic 
); 
end component fulladder; 
signal carry_internal: std_logic_vector(bits downto 0); 
begin 
adders: for N in 0 to bits-1 generate 
myfulladder: fulladder port map ( 
A => A(N), 
B => B(N), 
CI => carry_internal(N), 
CO => carry_internal(N+1) 
); 
end generate; 
carry_internal(0) <= CI; CO <= carry_internal(bits); 
end behave;