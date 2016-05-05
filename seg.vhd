library ieee;
use ieee.std_logic_1164.all;

entity seg is
port(
		a:in std_logic_vector(7 downto 0);
		b:out std_logic_vector(13 downto 0)
);
end seg;

architecture dataflow of seg is
begin
	process
		begin
		
		b(0) <= (a(0) or a(2) or (a(1) and a(3)) or (not(a(1)) and not(a(3))) );
		b(1) <= (not(a(1)) or (not(a(2)) and not(3)) or (a(2) and a(3)) );
		b(2) <= (a(1) or not(a(2)) or a(3));
		b(3) <= ( (not(a(1)) and not(a(3))) or (a(2) and not(a(3))) or (a(1) and not(a(2)) and a(3)) or (not(a(1)) and a(2)) or a(0) );
		b(4) <= ( (not(a(1)) and not(a(3))) or (a(2) and not(a(3))) );
		b(5) <= ( a(0) or ( not(a(2)) and not(a(3)) ) or (a(1) and not(a(2))) or (a(1) and not(a(3))) );
		b(6) <= ( a(0) or (a(1) and a(2)) or (not(a(1)) and a(2)) or(a(2) and not(a(3))) );
		b(7) <= (a(4) or a(6) or (a(5) and a(7)) or (not(a(5)) and not(a(7))) );
		b(8) <= (not(a(5)) or (not(a(6)) and not(7)) or (a(6) and a(7)) );
		b(9) <= (a(5) or not(a(6)) or a(7));
		b(10) <= ( (not(a(5)) and not(a(7))) or (a(6) and not(a(7))) or (a(5) and not(a(6)) and a(7)) or (not(a(5)) and a(6)) or a(4) );
		b(11) <= ( (not(a(5)) and not(a(7))) or (a(6) and not(a(7))) );
		b(12) <= ( a(4) or ( not(a(6)) and not(a(7)) ) or (a(5) and not(a(6))) or (a(5) and not(a(7))) );
		b(13) <= ( a(4) or (a(5) and a(6)) or (not(a(5)) and a(6)) or(a(6) and not(a(7))) );
		
	end process;
end dataflow;