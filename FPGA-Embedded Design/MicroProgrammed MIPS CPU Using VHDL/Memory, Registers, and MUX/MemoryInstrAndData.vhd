----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:54:17 03/14/2019 
-- Design Name: 
-- Module Name:    MemoryInstrAndData - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MemoryInstrAndData is
    generic (
       Dwidth : integer := 16; -- Each location is 16 bits
       Awidth : integer := 8); -- 4 Address lines (i.e., 16 locations)
    port (
       we, re, clk: in std_logic;
       addr: in std_logic_vector(Awidth-1 downto 0);
       din: in std_logic_vector(Dwidth-1 downto 0);
       dout: out std_logic_vector(Dwidth-1 downto 0)
    );
end MemoryInstrAndData;

architecture Structural of MemoryInstrAndData is

type memType is array(0 to 2**Awidth-1) of std_logic_vector(Dwidth-1 downto 0);
      -- The first 8 locations are initialized, the rest set to 0.
      signal memory: memType:=
        (--opcode, read1, read2, write/I
          "1000000000010010",
          "0000000000000010",
          "1000000000000100",
          "0110111101101111",
          "0000000000010000",
          "0000000000100000",
          "0000000001000000",
          "1111111111111111",
          others=> "0000000000000000" );
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
begin
process(clk)
	begin
	 if(rising_edge(clk)) then
		 if(we='1') then memory(conv_integer(addr))<=din;
		 end if;
		 if (re ='1') then dout<=memory(conv_integer(addr));
		 end if;
	 end if;
end process;

end Structural;

