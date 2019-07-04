----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:01:58 03/14/2019 
-- Design Name: 
-- Module Name:    InstructionRegister - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterWithEnable is
    Port ( din : in  STD_LOGIC_VECTOR (15 downto 0);
           dout : out  STD_LOGIC_VECTOR (15 downto 0);
           IRWrite : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end RegisterWithEnable;

architecture Structural of RegisterWithEnable is

signal memory : std_logic_vector (15 downto 0) := "0000000000000000";

begin

process(clk, IRWrite, memory, din)
	begin
	 if falling_edge(clk) then
		 if(IRWrite = '1') then
			memory <= din;
			dout <= din;
		 else
		 dout <= memory;
		 end if;
	 end if;
end process;

end Structural;

