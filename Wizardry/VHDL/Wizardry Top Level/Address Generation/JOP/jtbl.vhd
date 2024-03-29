--
--	jtbl.vhd
--
--	jump table for java bc to jvm address
--
--		DONT edit this file!
--		generated by Jopa.java
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity jtbl is
port (
	bcode	: in std_logic_vector(7 downto 0);
	int_pend	: in  std_logic;
	exc_pend	: in  std_logic;
	q		: out std_logic_vector(10 downto 0)
);
end jtbl;

--
--	unregistered rdbcode
--	unregistered dout
--
architecture rtl of jtbl is

	signal	addr	: std_logic_vector(10 downto 0);

begin

process(bcode) begin

	case bcode is

		when "00000000" => addr <= "00001111010";	--	007a	nop
		when "00000010" => addr <= "00001111011";	--	007b	iconst_m1
		when "00000001" => addr <= "00001111100";	--	007c	aconst_null
		when "00000011" => addr <= "00001111100";	--	007c	iconst_0
		when "00000100" => addr <= "00001111101";	--	007d	iconst_1
		when "00000101" => addr <= "00001111110";	--	007e	iconst_2
		when "00000110" => addr <= "00001111111";	--	007f	iconst_3
		when "00000111" => addr <= "00010000000";	--	0080	iconst_4
		when "00001000" => addr <= "00010000001";	--	0081	iconst_5
		when "00010000" => addr <= "00010000010";	--	0082	bipush
		when "00010001" => addr <= "00010000100";	--	0084	sipush
		when "00010010" => addr <= "00010000111";	--	0087	ldc
		when "00010011" => addr <= "00010001110";	--	008e	ldc_w
		when "00011001" => addr <= "00010010110";	--	0096	aload
		when "00010111" => addr <= "00010010110";	--	0096	fload
		when "00010101" => addr <= "00010010110";	--	0096	iload
		when "00101010" => addr <= "00010011000";	--	0098	aload_0
		when "00100010" => addr <= "00010011000";	--	0098	fload_0
		when "00011010" => addr <= "00010011000";	--	0098	iload_0
		when "00101011" => addr <= "00010011001";	--	0099	aload_1
		when "00100011" => addr <= "00010011001";	--	0099	fload_1
		when "00011011" => addr <= "00010011001";	--	0099	iload_1
		when "00101100" => addr <= "00010011010";	--	009a	aload_2
		when "00100100" => addr <= "00010011010";	--	009a	fload_2
		when "00011100" => addr <= "00010011010";	--	009a	iload_2
		when "00101101" => addr <= "00010011011";	--	009b	aload_3
		when "00100101" => addr <= "00010011011";	--	009b	fload_3
		when "00011101" => addr <= "00010011011";	--	009b	iload_3
		when "00111010" => addr <= "00010011100";	--	009c	astore
		when "00111000" => addr <= "00010011100";	--	009c	fstore
		when "00110110" => addr <= "00010011100";	--	009c	istore
		when "01001011" => addr <= "00010011110";	--	009e	astore_0
		when "01000011" => addr <= "00010011110";	--	009e	fstore_0
		when "00111011" => addr <= "00010011110";	--	009e	istore_0
		when "01001100" => addr <= "00010011111";	--	009f	astore_1
		when "01000100" => addr <= "00010011111";	--	009f	fstore_1
		when "00111100" => addr <= "00010011111";	--	009f	istore_1
		when "01001101" => addr <= "00010100000";	--	00a0	astore_2
		when "01000101" => addr <= "00010100000";	--	00a0	fstore_2
		when "00111101" => addr <= "00010100000";	--	00a0	istore_2
		when "01001110" => addr <= "00010100001";	--	00a1	astore_3
		when "01000110" => addr <= "00010100001";	--	00a1	fstore_3
		when "00111110" => addr <= "00010100001";	--	00a1	istore_3
		when "01010111" => addr <= "00010100010";	--	00a2	pop
		when "01011000" => addr <= "00010100011";	--	00a3	pop2
		when "01011001" => addr <= "00010100101";	--	00a5	dup
		when "01011010" => addr <= "00010100110";	--	00a6	dup_x1
		when "01011011" => addr <= "00010101011";	--	00ab	dup_x2
		when "01011100" => addr <= "00010110010";	--	00b2	dup2
		when "01011101" => addr <= "00010111000";	--	00b8	dup2_x1
		when "01011110" => addr <= "00011000000";	--	00c0	dup2_x2
		when "01011111" => addr <= "00011001010";	--	00ca	swap
		when "01100000" => addr <= "00011001110";	--	00ce	iadd
		when "01100100" => addr <= "00011001111";	--	00cf	isub
		when "01110100" => addr <= "00011010000";	--	00d0	ineg
		when "01111110" => addr <= "00011010100";	--	00d4	iand
		when "10000000" => addr <= "00011010101";	--	00d5	ior
		when "10000010" => addr <= "00011010110";	--	00d6	ixor
		when "01111000" => addr <= "00011010111";	--	00d7	ishl
		when "01111010" => addr <= "00011011000";	--	00d8	ishr
		when "01111100" => addr <= "00011011001";	--	00d9	iushr
		when "01101000" => addr <= "00011011010";	--	00da	imul
		when "10000100" => addr <= "00011100110";	--	00e6	iinc
		when "10010010" => addr <= "00011101110";	--	00ee	i2c
		when "11000110" => addr <= "00011110000";	--	00f0	ifnull
		when "11000111" => addr <= "00011110000";	--	00f0	ifnonnull
		when "10011001" => addr <= "00011110000";	--	00f0	ifeq
		when "10011010" => addr <= "00011110000";	--	00f0	ifne
		when "10011011" => addr <= "00011110000";	--	00f0	iflt
		when "10011100" => addr <= "00011110000";	--	00f0	ifge
		when "10011101" => addr <= "00011110000";	--	00f0	ifgt
		when "10011110" => addr <= "00011110000";	--	00f0	ifle
		when "10100101" => addr <= "00011110100";	--	00f4	if_acmpeq
		when "10100110" => addr <= "00011110100";	--	00f4	if_acmpne
		when "10011111" => addr <= "00011110100";	--	00f4	if_icmpeq
		when "10100000" => addr <= "00011110100";	--	00f4	if_icmpne
		when "10100001" => addr <= "00011110100";	--	00f4	if_icmplt
		when "10100010" => addr <= "00011110100";	--	00f4	if_icmpge
		when "10100011" => addr <= "00011110100";	--	00f4	if_icmpgt
		when "10100100" => addr <= "00011110100";	--	00f4	if_icmple
		when "10100111" => addr <= "00011111000";	--	00f8	goto
		when "11100000" => addr <= "00011111100";	--	00fc	getstatic_ref
		when "10110010" => addr <= "00011111100";	--	00fc	getstatic
		when "10110011" => addr <= "00100000011";	--	0103	putstatic
		when "11100010" => addr <= "00100001011";	--	010b	getfield_ref
		when "10110100" => addr <= "00100001011";	--	010b	getfield
		when "11101001" => addr <= "00100001110";	--	010e	jopsys_getfield
		when "10110101" => addr <= "00100010011";	--	0113	putfield
		when "11101010" => addr <= "00100010111";	--	0117	jopsys_putfield
		when "10111100" => addr <= "00100011100";	--	011c	newarray
		when "10111110" => addr <= "00100110011";	--	0133	arraylength
		when "01010100" => addr <= "00100111001";	--	0139	bastore
		when "01010101" => addr <= "00100111001";	--	0139	castore
		when "01010001" => addr <= "00100111001";	--	0139	fastore
		when "01001111" => addr <= "00100111001";	--	0139	iastore
		when "01010110" => addr <= "00100111001";	--	0139	sastore
		when "00110010" => addr <= "00100111111";	--	013f	aaload
		when "00110011" => addr <= "00100111111";	--	013f	baload
		when "00110100" => addr <= "00100111111";	--	013f	caload
		when "00110000" => addr <= "00100111111";	--	013f	faload
		when "00101110" => addr <= "00100111111";	--	013f	iaload
		when "00110101" => addr <= "00100111111";	--	013f	saload
		when "11000010" => addr <= "00101000100";	--	0144	monitorenter
		when "11000011" => addr <= "00101010110";	--	0156	monitorexit
		when "10110111" => addr <= "00101101010";	--	016a	invokespecial
		when "10111000" => addr <= "00101101010";	--	016a	invokestatic
		when "11011110" => addr <= "00101110010";	--	0172	jopsys_invoke
		when "10111001" => addr <= "00101110110";	--	0176	invokeinterface
		when "11101100" => addr <= "00110101000";	--	01a8	invokesuper
		when "10110110" => addr <= "00111010111";	--	01d7	invokevirtual
		when "10110000" => addr <= "01000111001";	--	0239	areturn
		when "10101110" => addr <= "01000111001";	--	0239	freturn
		when "10101100" => addr <= "01000111001";	--	0239	ireturn
		when "10101111" => addr <= "01001010000";	--	0250	dreturn
		when "10101101" => addr <= "01001010000";	--	0250	lreturn
		when "10110001" => addr <= "01001101001";	--	0269	return
		when "00010100" => addr <= "01010010010";	--	0292	ldc2_w
		when "00001001" => addr <= "01010100011";	--	02a3	lconst_0
		when "00001010" => addr <= "01010100101";	--	02a5	lconst_1
		when "10001000" => addr <= "01010100111";	--	02a7	l2i
		when "00100110" => addr <= "01010101010";	--	02aa	dload_0
		when "00011110" => addr <= "01010101010";	--	02aa	lload_0
		when "00100111" => addr <= "01010101100";	--	02ac	dload_1
		when "00011111" => addr <= "01010101100";	--	02ac	lload_1
		when "00101000" => addr <= "01010101110";	--	02ae	dload_2
		when "00100000" => addr <= "01010101110";	--	02ae	lload_2
		when "00101001" => addr <= "01010110000";	--	02b0	dload_3
		when "00100001" => addr <= "01010110000";	--	02b0	lload_3
		when "00011000" => addr <= "01010111011";	--	02bb	dload
		when "00010110" => addr <= "01010111011";	--	02bb	lload
		when "01000111" => addr <= "01011000110";	--	02c6	dstore_0
		when "00111111" => addr <= "01011000110";	--	02c6	lstore_0
		when "01001000" => addr <= "01011001000";	--	02c8	dstore_1
		when "01000000" => addr <= "01011001000";	--	02c8	lstore_1
		when "01001001" => addr <= "01011001010";	--	02ca	dstore_2
		when "01000001" => addr <= "01011001010";	--	02ca	lstore_2
		when "01001010" => addr <= "01011001100";	--	02cc	dstore_3
		when "01000010" => addr <= "01011001100";	--	02cc	lstore_3
		when "00111001" => addr <= "01011010111";	--	02d7	dstore
		when "00110111" => addr <= "01011010111";	--	02d7	lstore
		when "11100100" => addr <= "01011100010";	--	02e2	getstatic_long
		when "11100101" => addr <= "01011110010";	--	02f2	putstatic_long
		when "11100110" => addr <= "01100000011";	--	0303	getfield_long
		when "11100111" => addr <= "01100011101";	--	031d	putfield_long
		when "01010000" => addr <= "01100111010";	--	033a	lastore
		when "00101111" => addr <= "01101101010";	--	036a	laload
		when "10111011" => addr <= "01110111110";	--	03be	new
		when "10111101" => addr <= "01110111110";	--	03be	anewarray
		when "11000000" => addr <= "01110111110";	--	03be	checkcast
		when "11000001" => addr <= "01110111110";	--	03be	instanceof
		when "11100011" => addr <= "01111011011";	--	03db	putfield_ref
		when "11100001" => addr <= "01111011011";	--	03db	putstatic_ref
		when "11010001" => addr <= "01111110011";	--	03f3	jopsys_rd
		when "11010011" => addr <= "01111110011";	--	03f3	jopsys_rdmem
		when "11010010" => addr <= "01111110111";	--	03f7	jopsys_wr
		when "11010100" => addr <= "01111110111";	--	03f7	jopsys_wrmem
		when "11010101" => addr <= "01111111100";	--	03fc	jopsys_rdint
		when "11010110" => addr <= "01111111111";	--	03ff	jopsys_wrint
		when "11010111" => addr <= "10000000010";	--	0402	jopsys_getsp
		when "11011000" => addr <= "10000000101";	--	0405	jopsys_setsp
		when "11011001" => addr <= "10000001001";	--	0409	jopsys_getvp
		when "11011010" => addr <= "10000001010";	--	040a	jopsys_setvp
		when "11011011" => addr <= "10000001100";	--	040c	jopsys_int2ext
		when "11011100" => addr <= "10000100111";	--	0427	jopsys_ext2int
		when "11101000" => addr <= "10001000011";	--	0443	jopsys_memcpy
		when "11011101" => addr <= "10001001000";	--	0448	jopsys_nop

		when others => addr <= "01110101011";		--	03ab	sys_noim
	end case;
end process;

process(int_pend, exc_pend, addr) begin

	q <= addr;
	if exc_pend='1' then
		q <= "01110011111";		--	039f	sys_exc
	elsif int_pend='1' then
		q <= "01110010101";		--	0395	sys_int
	end if;
end process;

end rtl;
