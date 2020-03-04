library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AEStb is
end AEStb;

architecture arch1 of AEStb is

	-- component ports
	signal AES_data_in           : STD_LOGIC_VECTOR(127 downto 0) := (others => '0');  -- data write port
	signal AES_data_out           : STD_LOGIC_VECTOR(127 downto 0) := (others => '0');  -- data write port
	signal AES_key		          : STD_LOGIC_VECTOR(127 downto 0) := (others => '0');  -- data write port
	signal AES_start              : STD_LOGIC := '0';
	signal AES_ready              : STD_LOGIC := '0';             
	signal AES_clk				  : STD_LOGIC := '0';  -- avalon bus clock
	signal AES_reset			  : STD_LOGIC := '0';  -- avalon bus reset
	
	signal INV_data_in           : STD_LOGIC_VECTOR(127 downto 0) := (others => '0');  -- data write port
	signal INV_data_out           : STD_LOGIC_VECTOR(127 downto 0) := (others => '0');  -- data write port
	signal INV_key		          : STD_LOGIC_VECTOR(127 downto 0) := (others => '0');  -- data write port
	signal INV_start              : STD_LOGIC := '0';
	signal INV_ready              : STD_LOGIC := '0';             
	
	signal INV_reset			  : STD_LOGIC := '0';  -- avalon bus reset
    
begin  -- architecture arch1
	ForwardAES : entity work.aes_fsmd
		port map (
			data_in	 => AES_data_in,	-- avalon bus clock
			data_out => AES_data_out,	-- avalon bus reset
			key      => AES_key,		   -- enable component
			start    => AES_start,		   -- data write port
			ready	 => AES_ready,	-- slave address space offset
			clk	     => AES_clk,	-- write enable
			rst_b	 => AES_reset		-- read request form avalon
			);		   -- result read port
			
    InverseAES : entity work.inv_aes_fsmd
		port map (
			data_in	 => INV_data_in,	-- avalon bus clock
			data_out => INV_data_out,	-- avalon bus reset
			key      => INV_key,		   -- enable component
			start    => INV_start,		   -- data write port
			ready	 => INV_ready,	-- slave address space offset
			clk	     => AES_clk,	-- write enable
			rst_b	 => INV_reset		-- read request form avalon
			);	
			
	-- clock generation
	AES_clk <= not AES_clk after 10 ns;
	

	-- waveform generation
	WaveGen_Proc : process
	begin
		-- insert signal assignments here
		AES_reset <= '0';
		AES_start   <= '0';
		INV_reset <= '0';
		INV_start <= '0';
		
		wait for 20ns;
		AES_reset <= '1';
		INV_reset <= '1';
		
		AES_data_in <=  x"22222222222222222222222222222222";
	    INV_data_in <=  x"0d16449f39c838eb8ac38927d4d61067";	
		
		AES_key     <=  x"11111111111111111111111111111111";
		INV_key     <=  x"11111111111111111111111111111111";
		
		wait for 20ns;
		AES_start   <= '1';
		INV_start   <= '1';
        
		wait;
	end process WaveGen_Proc;
end architecture arch1;
