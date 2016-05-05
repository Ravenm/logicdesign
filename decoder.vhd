library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port(
		inst:in std_logic_vector(15 downto 0);
		en: in std_logic;
		rega,regb: in std_logic_vector(7 downto 0);
		dataouta, dataoutb:out std_logic_vector(7 downto 0);
		enout:out std_logic_vector(2 downto 0);
		sreg: out std_logic		
);
end decoder;

architecture dataflow of decoder is
begin
	process(en)
	begin
		if en = '1' then
			sreg <= '0';
			if inst(0) = '0' then
				if inst(2) = '0' then
					if inst(4) = '0' then
						--add
						enout <= "001";
						if inst(12) = '0' then
							--al
							dataouta <= rega;
							dataoutb <= regb;
						else
							--bl
							dataouta <= regb;
							dataoutb <= rega;
							sreg <= '1';
						end if;
					else
						--or
						enout <= "010";
						if inst(12) = '0' then
							--al
							dataouta <= rega;
							dataoutb <= regb;
						else
							--bl
							dataouta <= regb;
							dataoutb <= rega;
							sreg <= '1';
						end if;
					end if;
				else
					if inst (4) = '0' then
						--and
						enout <="011";
						if inst(12) = '0' then
							--al
							dataouta <= rega;
							dataoutb <= regb;
						else
							--bl
							dataouta <= regb;
							dataoutb <= rega;
							sreg <= '1';
						end if;
					else
						--sub
						enout <="111";
						if inst(12) = '0' then
							--al
							dataouta <= rega;
							dataoutb <= not(regb);
						else
							--bl
							dataouta <= regb;
							dataoutb <= not(rega);
							sreg <= '1';
						end if;
					end if;
				end if;
			else
				if inst(1) = '0' then
					if inst(2) = '0' then
						--mov reg
						enout <="001";
						if inst(12) = '0' then
							--al
							dataouta <= rega;
							dataoutb <= "00000000";
						else
							--bl
							dataouta <= regb;
							dataoutb <= "00000000";
							sreg <= '1';
						end if;
					else
						--mov imme
						enout <="001";
						if inst(12) = '0' then
							--al
							dataouta(0) <= inst(8);
							dataouta(1) <= inst(9);
							dataouta(2) <= inst(10);
							dataouta(3) <= inst(11);
							dataouta(4) <= inst(12);
							dataouta(5) <= inst(13);
							dataouta(6) <= inst(14);
							dataouta(7) <= inst(15);
							dataoutb <= "00000000";
						else
							--bl
							dataouta(0) <= inst(8);
							dataouta(1) <= inst(9);
							dataouta(2) <= inst(10);
							dataouta(3) <= inst(11);
							dataouta(4) <= inst(12);
							dataouta(5) <= inst(13);
							dataouta(6) <= inst(14);
							dataouta(7) <= inst(15);
							dataoutb <= "00000000";
							sreg <= '1';
						end if;
					end if;
				else
					if inst(2) = '0' then
						--shl shr
						if inst(12) = '0' then
							--shl
							enout <="100";
							if inst(12) = '0' then
								--al
								dataouta <= rega;
								dataoutb <= "00000000";
							else
								--bl
								dataouta <= regb;
								dataoutb <= "00000000";
								sreg <= '1';
							end if;
						else
							--shr
							enout <="101";
							if inst(12) = '0' then
								--al
								dataouta <= rega;
								dataoutb <= "00000000";
							else
								--bl
								dataouta <= regb;
								dataoutb <= "00000000";
								sreg <= '1';
							end if;
						end if;
					else
						--inc
						enout <="001";
						if inst(12) = '0' then
							--al
							dataouta <= rega;
							dataoutb <= "00000001";
						else
							--bl
							dataouta <= regb;
							dataoutb <= "00000001";
							sreg <= '1';
						end if;
					end if;
				end if;
			end if;
		else
			enout <= "000";
		end if;
	end process;
end dataflow;