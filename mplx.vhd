library ieee;
use ieee.std_logic_1164.all;

entity mplx is
port(
		s:in std_logic_vector(2 downto 0);
		en,en1,en2,en3,en4, cout: std_logic
);
end mplx;

architecture dataflow of mplx is
begin
	process
		begin
		cout <= '0';
		if(not(s(0)) and not(s(1)) and s(2)) then --add
			en <= '1';
		elsif(not(s(0)) and s(1) and not(s(2))) then -- or
			en1 <='1';
		elsif(not(s(0)) and s(1) and s(2)) then --and
			en2 <='1';
		elsif(s(0) and not(s(1)) and not(s(2))) then -- shl
			en3 <='1';
		elsif(s(0) and not(s(1)) and s(2)) then -- shr
			en4 <='1';
		elsif(s(0) and s(1) and s(2)) then -- sub
			en <='1';
			cout <='1';
		else
			en <='0';
			en1 <='0';
			en2 <='0';
			en3 <='0';
			en4 <='0';
		end if;
	end process;
end dataflow;