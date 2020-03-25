library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity addroundkey is
    Port ( r_key : in STD_LOGIC_VECTOR (127 downto 0);
           s : in STD_LOGIC_VECTOR (127 downto 0);
           s_out : out STD_LOGIC_VECTOR (127 downto 0));
end addroundkey;

architecture Behavioral of addroundkey is

begin
s_out<=s xor r_key;

end Behavioral;
