library ieee;
use iee.std_logic_1164.all;

entity rightshift is
port(
	sin:in std_logic_vector(7 downto 0)
	sout:out std_logic_vector(7 downto 0)
);
end rightshift;

architecture dataflow of rightshift is
begin
	sout(0)<=sin(1)
	sout(1)<=sin(2)
	sout(2)<=sin(3)
	sout(3)<=sin(4)
	sout(4)<=sin(5)
	sout(5)<=sin(6)
	sout(6)<=sin(7)
	sout(7)<='0'
end dataflow;