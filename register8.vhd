library ieee;
use ieee.std_logic_1164.all;

entity register8 is port( 
	rin:in std_logic_vector(7 downto 0); --input
	en:in std_logic; --enable
	clr:in std_logic; --clear
	clk:in std_logic; --clock
	rout:out std_logic_vector(7 downto 0) --output
);

end register8;

architecture description of register8 is

begin
	process(clk, clr)
	begin
		if clr = '1' then
			rout<="00000000";
		elsif rising_edge(clk) then
			if en = '1' then
				rout <= rin;
			end if;
		end if;
	end process;
end description;