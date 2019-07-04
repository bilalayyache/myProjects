----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:28:59 03/14/2019 
-- Design Name: 
-- Module Name:    Mux4bits2to1 - Behavioral 
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

entity Mux4bits2to1 is
    Port ( din1 : in  STD_LOGIC_VECTOR (3 downto 0);
           din2 : in  STD_LOGIC_VECTOR (3 downto 0);
           dout : out  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC);
end Mux4bits2to1;

architecture Structural of Mux4bits2to1 is

begin

process(sel, din1, din2)
	begin
		if sel = '0' then
			dout <= din1;
		elsif sel = '1' then
			dout <= din2;
		end if;
	end process;

end Structural;

