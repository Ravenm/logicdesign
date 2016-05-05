library ieee;
use ieee.std_logic_1164.all;

entity regand is
port(
	ain, bin:in std_logic_vector(7 downto 0);
	sout:out std_logic_vector(7 downto 0)
);
end regand;

architecture dataflow of regand is
begin
	sout(0)<=(ain(0) and bin(0));
	sout(1)<=(ain(1) and bin(1));
	sout(2)<=(ain(2) and bin(2));
	sout(3)<=(ain(3) and bin(3));
	sout(4)<=(ain(4) and bin(4));
	sout(5)<=(ain(5) and bin(5));
	sout(6)<=(ain(6) and bin(6));
	sout(7)<=(ain(7) and bin(7));
end dataflow;