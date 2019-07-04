----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:24:12 03/15/2019 
-- Design Name: 
-- Module Name:    PCRegister - Behavioral 
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

entity PCRegister is
    Port ( PCadded : in  STD_LOGIC_VECTOR (15 downto 0);
           PCold : out  STD_LOGIC_VECTOR (15 downto 0);
           switches : in  STD_LOGIC_VECTOR (15 downto 0);
			  clk, reset: in std_logic;
			  we: in std_logic);
end PCRegister;

architecture Structural of PCRegister is

signal memory : std_logic_vector (15 downto 0) := "0000000000000001";

begin

process(clk, we, reset, PCadded)
	begin
	 if we = '1'  then
			memory <= PCadded;
	 end if;
	 if reset = '1' then
		 memory <= "0000000000000001";
		 PCold <= "0000000000000000";
	 elsif falling_edge(clk)then
	    PCold <= memory;
	 end if;
end process;

end Structural;

