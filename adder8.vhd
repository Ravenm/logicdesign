library ieee;
use ieee.std_logic_1164.all; 

entity adder8 is 
	port ( A: in std_logic_vector(7 downto 0);
		B: in std_logic_vector(7 downto 0); 
		CI: in std_logic; 
		O: out std_logic_vector(7 downto 0); 
		CO: out std_logic 
	); 
end entity adder8; 

architecture behave of adder8 is 
	component generic_adder is 
		generic ( 
			bits: integer 
		); 
		
		port ( 
			A: in std_logic_vector(bits-1 downto 0); 
			B: in std_logic_vector(bits-1 downto 0); 
			CI: in std_logic; 
			O: out std_logic_vector(bits-1 downto 0); 
			CO: out std_logic ); 
	end component generic_adder; 
	
begin 
	adder: generic_adder 
	generic map ( bits => 8 ) 
	port map ( A => A, B => B, CI => CI, O => O, CO => CO ); 
end behave;
