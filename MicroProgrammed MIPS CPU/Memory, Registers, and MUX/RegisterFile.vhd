----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:05 03/14/2019 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

entity RegisterFile is
    Port ( readA1 : in  STD_LOGIC_VECTOR (3 downto 0);
           readA2 : in  STD_LOGIC_VECTOR (3 downto 0);
           writeA : in  STD_LOGIC_VECTOR (3 downto 0);
           writeData : in  STD_LOGIC_VECTOR (15 downto 0);
           we : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           dout1 : out  STD_LOGIC_VECTOR (15 downto 0);
           dout2 : out  STD_LOGIC_VECTOR (15 downto 0));
end RegisterFile;

architecture Structural of RegisterFile is

type memType is array(0 to 2**4-1) of std_logic_vector(15 downto 0);
      -- The first 8 locations are initialized, the rest set to 0.
      signal memory: memType:=
        (
          "0000000000000001",
          "0000000000000011",
          "0011001100110011",
          "1001100110011001",
          "0000000000010000",
          "0000000000100000",
          "0000000001000000",
          "0000000010000000",
          others=> "0000000000000000" );
			 attribute KEEP : string;
attribute KEEP of memory : signal is "TRUE";
			 
			 
    begin
       process(clk)
       begin
          if(rising_edge(clk)) then
				dout1<=memory(conv_integer(ReadA1));
				dout2<=memory(conv_integer(ReadA2));
             if(we='1') then
                 memory(conv_integer(WriteA)) <= writeData;
             end if;
				
		
          end if;
       end process;
end Structural;

