--
--	offtbl.vhd
--
--	next bc or bc operand read for offtch.
--
--		DONT edit this file!
--		generated by Jopa.java
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity offtbl is
port (
	idx		: in std_logic_vector(4 downto 0);
	q		: out std_logic_vector(10 downto 0)
);
end offtbl;

architecture rtl of offtbl is

begin

process(idx) begin

	case idx is

		when "00000" => q <= "00000010100";	-- 20
		when "00001" => q <= "11111111001";	-- -7
		when "00010" => q <= "00001000000";	-- 64
		when "00011" => q <= "11111110111";	-- -9
		when "00100" => q <= "11111100000";	-- -32
		when "00101" => q <= "00000000100";	-- 4
		when "00110" => q <= "11111000110";	-- -58
		when "00111" => q <= "00011110110";	-- 246
		when "01000" => q <= "11111111011";	-- -5
		when "01001" => q <= "00001000001";	-- 65
		when "01010" => q <= "00000001100";	-- 12
		when "01011" => q <= "00010000111";	-- 135
		when "01100" => q <= "00011101110";	-- 238
		when "01101" => q <= "00001010101";	-- 85
		when "01110" => q <= "00010111100";	-- 188
		when "01111" => q <= "00000100101";	-- 37
		when "10000" => q <= "00010001101";	-- 141
		when "10001" => q <= "11011101100";	-- -276
		when "10010" => q <= "11011100010";	-- -286
		when "10011" => q <= "11101111000";	-- -136
		when "10100" => q <= "11101011100";	-- -164
		when "10101" => q <= "11100111110";	-- -194
		when "10110" => q <= "11100111000";	-- -200
		when "10111" => q <= "11100010000";	-- -240
		when "11000" => q <= "11100001010";	-- -246
		when "11001" => q <= "10111010101";	-- -555
		when "11010" => q <= "10111001001";	-- -567
		when "11011" => q <= "10110110110";	-- -586
		when "11100" => q <= "10110011001";	-- -615
		when "11101" => q <= "10110000001";	-- -639
		when "11110" => q <= "11111110010";	-- -14
		when "11111" => q <= "11111110001";	-- -15

		when others => q <= "00000000000";
	end case;
end process;

end rtl;
