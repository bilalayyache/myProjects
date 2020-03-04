LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY inv_aes_stage IS
PORT(
    d_in        :	IN  std_logic_vector(127 downto 0);
    key	        :	IN  std_logic_vector(127 downto 0);
    data_out    :	OUT std_logic_vector(127 downto 0);
    clk         :   IN std_logic
    );
END inv_aes_stage;

architecture Behavioral of inv_aes_stage is

component inv_subbytes is
    Port ( a : in STD_LOGIC_VECTOR (127 downto 0);
           s : out STD_LOGIC_VECTOR (127 downto 0));
end component;
component inv_shiftrows is
    Port ( a : in STD_LOGIC_VECTOR(127 DOWNTO 0);
           b : out STD_LOGIC_VECTOR(127 DOWNTO 0));
end component;
component inv_mixcolumns is
    Port ( a : in STD_LOGIC_VECTOR (127 downto 0);
           m : out STD_LOGIC_VECTOR (127 downto 0));
end component;
component addroundkey is
 Port ( r_key : in STD_LOGIC_VECTOR (127 downto 0);
        s : in STD_LOGIC_VECTOR (127 downto 0);
        s_out : out STD_LOGIC_VECTOR (127 downto 0));
end component;
signal ishout,isubout,arkout:std_logic_vector(127 downto 0);
begin

u1:inv_shiftrows port map(d_in,ishout);
u2:inv_subbytes port map(ishout,isubout);
u3:addroundkey port map(key,isubout,arkout);
u4:inv_mixcolumns port map(arkout,data_out);

end Behavioral;