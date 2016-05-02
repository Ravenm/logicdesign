library ieee;
use ieee.std_logic_1164.all;
entity adder is
port(
	a,b,cin:in std_logic; --add a b and carryin
	sum,cout:out std_logic; --sum and carryout
);
end adder;

architecture dataflow of adder is
begin
sum<=(a or b) xor cin;
cout<=(a and b) or (a and cin) or (b and cin);
end dataflow;

