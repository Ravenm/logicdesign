library ieee;
use ieee.std_logic_1164.all;

entity cpu is
	port(
	inst:in std_logic_vector(15 downto 0);
	output:out std_logic_vector(13 downto 0)
	);
	
end cpu;

architecture structure of cpu is
	component adder8
		port ( A: in std_logic_vector(7 downto 0);
			B: in std_logic_vector(7 downto 0); 
			CI: in std_logic; 
			O: out std_logic_vector(7 downto 0); 
			CO: out std_logic 
		); 
	end component;
	
	component rightshift
		port(
			sin:in std_logic_vector(7 downto 0);
			sout:out std_logic_vector(7 downto 0)
		);
	end component;
	
	component leftshift
		port(
			sin:in std_logic_vector(7 downto 0);
			sout:out std_logic_vector(7 downto 0)
		);
	end component;
	
	component regand
		port(
			ain, bin:in std_logic_vector(7 downto 0);
			sout:out std_logic_vector(7 downto 0)
		);
	end component;
	
	component regor
		port(
			ain, bin:in std_logic_vector(7 downto 0);
			sout:out std_logic_vector(7 downto 0)
		);
	end component;
	
	component seg
		port(
				a:in std_logic_vector(7 downto 0);
				b:out std_logic_vector(13 downto 0)
		);
	end component;
	
	component mplx
		port(
				s:in std_logic_vector(2 downto 0);
				en,en1,en2,en3,en4, cout: std_logic
		);
	end component;
	
	component decoder
		port(
				inst:in std_logic_vector(15 downto 0);
				en: in std_logic;
				rega,regb: in std_logic_vector(7 downto 0);
				dataouta, dataoutb:out std_logic_vector(7 downto 0);
				enout:out std_logic_vector(2 downto 0);
				sreg: out std_logic		
		);
	end component;
	
	component register8
		port( 
			rin:in std_logic_vector(7 downto 0); --input
			en:in std_logic; --enable
			clr:in std_logic; --clear
			rout:out std_logic_vector(7 downto 0) --output
		);
	end component;
	
	--signals
	
begin
	
end structure;