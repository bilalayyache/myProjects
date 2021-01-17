library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory is
		port (
			addr: in std_logic_vector(3 downto 0);
			dout: out std_logic_vector(14 downto 0);
			sel: out std_logic_vector(1 downto 0);
			en: out std_logic);
end memory;

architecture Behavioural of memory is
	type memType is array(0 to 9) of std_logic_vector(17 downto 0);
	-- The first 8 locations are initialized, the rest set to 0.
	signal memory: memType:=
		(--00,   01,  10
	  	--din1, 000 , +1  
			"110010100100001100",--fetch ->decode
			"100000000000011100",--decode->execute
			"110000000000100010",--	execute for r type - START
			"101000000011000000",--		writeback rtype - END
			"101100000000100111",--	execute for beq - START AND END
			"110000000000110100",--	execute for sw START
			"101001010000000000",--		mem for sw - END
			"110000000000110100",--	execute for lw - START
			"110001100000000000",--		mem for lw
			"101000001001000000" --			writeback lw - END
			);
--instructions:
--lw, sw, beq, rtype - and, or, unsigned add, xor, signed add, signed sub, set on less than
--opcodes:
--0000 and
--0001 or
--0010 unsigned add
--0011 xor
--0100 signed add
--0101 signed sub
--0110 set on less than
--1000 lw
--1001 sw
--1010 beq
--some amount of locations, 0 is fetch
--0-1, fetch and decode bitches
--all other locations used to accomodate the other microinstructions based on the control signals needed for each type
--lets get it
--come up with a cool way to do R codes famo
--Control Signals
--new instruction (1 when grabbing new instruction) 17
--microcontrol mux 15,16
--pcwritecond 14
--pcwrite 13
--iord 12
--memread 11
--memwrite 10
--memtoreg 9
--irwrite 8
--regdst 7
--regwrite 6
--alusrca 5
--alusrcb 4,3
--aluop 2,1
--pcsrc 0
		signal temp: std_logic_vector(17 downto 0);
begin
	temp<=memory(conv_integer(addr));
	dout<=temp(14 downto 0);
	sel<=temp(16 downto 15);
	en<=temp(17);
end Behavioural;

