LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FourBitBenchtest IS
END FourBitBenchtest;
 
ARCHITECTURE behavior OF FourBitBenchtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fourBitAdder
    PORT(
         in1 : IN  std_logic_vector(3 downto 0);
         in2 : IN  std_logic_vector(3 downto 0);
         mode : IN  std_logic;
         adder_out : OUT  std_logic_vector(3 downto 0);
         carryOutAdder : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal mode : std_logic := '0';
   signal in1 : std_logic_vector(3 downto 0) := "0000";
   signal in2 : std_logic_vector(3 downto 0) := "0000";

 	--Outputs
   signal adder_out : std_logic_vector(3 downto 0);
   signal carryOutAdder : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fourBitAdder PORT MAP (
          mode => mode,
			 in1 => in1,
          in2 => in2,
          adder_out => adder_out,
          carryOutAdder => carryOutAdder
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		in1 <= "0001";
		in2 <= "0001";
		mode <= '0';
		
		wait for 10 ns;
		in1 <= "0001";
		in2 <= "0001";
		mode <= '1';
 
		wait for 10 ns;
		in1 <= "0010";
		in2 <= "0001";
		mode <= '0';
 
		wait for 10 ns;
		in1 <= "0010";
		in2 <= "0001";
		mode <= '1';
 
		wait for 10 ns;
		in1 <= "0100";
		in2 <= "0010";
		mode <= '0';
 
		wait for 10 ns;
		in1 <= "1000";
		in2 <= "0100";
		mode <= '1';
 
		wait for 10 ns;
		in1 <= "0100";
		in2 <= "0110";
		mode <= '0';
 
		wait for 10 ns;
	end process;
END;
