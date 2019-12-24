----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:41 03/15/2019 
-- Design Name: 
-- Module Name:    ALUControlUnit - Behavioral 
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

entity ALUControlUnit is
    Port ( ALUOpControl : in  STD_LOGIC_VECTOR (1 downto 0);
           RTypeSel : in  STD_LOGIC_VECTOR (2 downto 0);
           ALUSelect : out  STD_LOGIC_VECTOR (2 downto 0));
end ALUControlUnit;

architecture Behavioural of ALUControlUnit is

begin

process(ALUOpControl, RTypeSel)
begin
	if ALUOpControl = "00" then
		ALUSelect <= "000";--dont care
	elsif ALUOpControl = "01" then
		ALUSelect <= RTypeSel;
	elsif ALUOpControl = "10" then
		ALUSelect <= "100";--adding for sw and lw and fetch and decode
	else
		ALUSelect <= "111";--beq
	end if;
end process;

end Behavioural;

