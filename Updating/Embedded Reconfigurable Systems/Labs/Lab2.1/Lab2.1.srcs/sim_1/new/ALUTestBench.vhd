library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALUTestBench is
end ALUTestBench;

architecture Behavioral of ALUTestBench is
    COMPONENT ALU
    PORT( in1 : in  std_logic_vector(3 downto 0);
           in2 : in  std_logic_vector(3 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0);
           cin : in  STD_LOGIC;
           Alu_out : out std_logic_vector(3 downto 0);
           cout : out  STD_LOGIC);
    END COMPONENT;
    
    signal in1 : std_logic_vector(3 downto 0) := (others => '0');
    signal in2 : std_logic_vector(3 downto 0) := (others => '0');
    signal sel : std_logic_vector(1 downto 0) := (others => '0');
    signal cin : std_logic := '0';
    
    signal Alu_out : std_logic_vector(3 downto 0) := (others => '0');
    signal cout : std_logic := '0';

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          in1 => in1,
          in2 => in2,
          Alu_out => Alu_out,
          sel => sel,
          cin => cin,
          cout => cout
        );
        
   stim_proc: process
   begin
   ---SELECT IS 00
    in1 <= "0000";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "00";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "00";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "00";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "00";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "00";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "00";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "00";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "00";
    wait for 10 ns;
    
---SELECT IS 01
    in1 <= "0000";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "01";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "01";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "01";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "01";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "01";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "01";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "01";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "01";
    wait for 10 ns;
    
---SELECT IS 10
    in1 <= "0000";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "10";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "10";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "10";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "10";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "10";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "10";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "10";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "10";
    wait for 10 ns;
    
    ---SELECT IS 11
    in1 <= "0000";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "11";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '0';
    
    sel <= "11";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "11";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '0';
    
    sel <= "11";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "11";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0000";
    cin <= '1';
    
    sel <= "11";
    wait for 10 ns;
    
    in1 <= "0000";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "11";
    wait for 10 ns;
    
    in1 <= "0001";
    in2 <= "0001";
    cin <= '1';
    
    sel <= "11";
    wait for 10 ns;
    
   end process;
end Behavioral;
