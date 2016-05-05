library ieee;
use ieee.std_logic_1164.all;

entity leftshift is
port(
	sin:in std_logic_vector(7 downto 0);
	sout:out std_logic_vector(7 downto 0)
);
end leftshift;

architecture dataflow of leftshift is
begin
	sout(0)<='0';
	sout(1)<=sin(0);
	sout(2)<=sin(1);
	sout(3)<=sin(2);
	sout(4)<=sin(3);
	sout(5)<=sin(4);
	sout(6)<=sin(5);
	sout(7)<=sin(6);
end dataflow;