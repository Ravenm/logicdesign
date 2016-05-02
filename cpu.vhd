library ieee;
use iee.std_logic_1164.all;

entity cpu is
port (inst:in std_logic_vector(18 downto 0);
		en: in std_logic;
		pinout:out std_logic_vector(7 downto 0);
);
end cpu;

architecture behavior of cpu is
begin
	first_4_bit(0) <= inst(0);
	first_4_bit(1) <= inst(1);
	first_4_bit(2) <= inst(2);
	first_4_bit(3) <= inst(3);
	process(en)
	begin
		if en = '1' then
			case fbit4 is
				when"0000" => --add or
				when"0010" => --and
				when"1000" => --mov
				when"1011" => --inc
				when"1111" => --shl
				when"1101" => --shr
				when"0010" => --sub
		end if;
	end process;

end behavior;