LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY benchTest IS
END benchTest;
 
ARCHITECTURE behavior OF benchTest IS 
 
    COMPONENT FullAdder
    PORT(
         CarryIn : IN  std_logic;
         P : IN  std_logic;
         Q : IN  std_logic;
         SUM : OUT  std_logic;
         CarryOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CarryIn : std_logic := '0';
   signal P : std_logic := '0';
   signal Q : std_logic := '0';

 	--Outputs
   signal SUM : std_logic;
   signal CarryOut : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          CarryIn => CarryIn,
          P => P,
          Q => Q,
          SUM => SUM,
          CarryOut => CarryOut
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		P <= '1';
		Q <= '0';
		CarryIn <= '0';
		
		wait for 10 ns;
		P <= '0';
		Q <= '1';
		CarryIn <= '0';
 
		wait for 10 ns;
		P <= '1';
		Q <= '1';
		CarryIn <= '0';
 
		wait for 10 ns;
		P <= '0';
		Q <= '0';
		CarryIn <= '1';
 
		wait for 10 ns;
		P <= '1';
		Q <= '0';
		CarryIn <= '1';
 
		wait for 10 ns;
		P <= '0';
		Q <= '1';
		CarryIn <= '1';
 
		wait for 10 ns;
		P <= '1';
		Q <= '1';
		CarryIn <= '1';
 
		wait for 10 ns;
	end process;
END;
