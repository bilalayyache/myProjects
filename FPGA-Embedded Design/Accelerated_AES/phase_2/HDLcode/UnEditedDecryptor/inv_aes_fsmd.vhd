LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY inv_aes_fsmd IS
PORT(
	    data_in     : IN  std_logic_vector(127 downto 0);
	    data_out    : OUT std_logic_vector(127 downto 0);
	    key	        : IN  std_logic_vector(127 downto 0);
	    start		: in std_logic;
	    ready		: out std_logic;
	    clk			: in std_logic;
	    rst_b		: in std_logic
    );
END inv_aes_fsmd;

ARCHITECTURE fsmd OF inv_aes_fsmd IS

    component aes_inv_cipher_top IS
        PORT(
            clk :       IN std_logic;
            rst :       IN STD_LOGIC;
            kld :       IN STD_LOGIC;
            ld :        IN STD_LOGIC;
            done :      OUT STD_LOGIC;
            key :       IN  std_logic_vector(127 downto 0);
            text_in :   IN  std_logic_vector(127 downto 0);
            text_out :  OUT  std_logic_vector(127 downto 0)
        );
    END component aes_inv_cipher_top;

	component aes_stage IS
		PORT(
		    d_in        :	IN  std_logic_vector(127 downto 0);
		    key	        :	IN  std_logic_vector(127 downto 0);
		    data_out    :	OUT std_logic_vector(127 downto 0)
		    );
	END component aes_stage;
	
	component aes_stage_last IS
		PORT(
		    d_in        :	IN  std_logic_vector(127 downto 0);
		    key	        :	IN  std_logic_vector(127 downto 0);
		    data_out    :	OUT std_logic_vector(127 downto 0)
		    );
	END component aes_stage_last;

	component pipe_reg is
	port (
	      signal clk   : in  std_logic;
	      signal rst_b : in  std_logic;
	      signal rsin  : in  std_logic_vector(127 downto 0);
	      signal rsout : out std_logic_vector(127 downto 0));
	end component pipe_reg;
	
	component key_schedule IS
	PORT(
	    key_in	    :   IN  std_logic_vector(127 downto 0);
	    key_out	    :   OUT std_logic_vector(127 downto 0);
	    round_constant  :	IN  std_logic_vector(7 downto 0)
	    );
	END component key_schedule;

	type ram_type is array(natural range<>) of std_logic_vector(7 downto 0);
	constant rcon: ram_type(0 to 9) := (X"01", X"02", X"04", X"08", X"10", X"20", X"40", X"80", X"1b", X"36");
	
	signal rconstant : std_logic_vector(7 downto 0);
	
	signal doneSignal : std_logic;
	
	signal kld, ld, resetSys : std_logic := '0';
	
	type state_type is (ST_IDLE, ST_LOAD, ST_CNT, ST_DONE);
	constant RST_STATE : state_type := ST_IDLE;
	signal state_reg, state_next : state_type;
	
	signal data_acc_next, data_acc_reg : std_logic_vector(127 downto 0);
	signal key_acc_next, key_acc_reg : std_logic_vector(127 downto 0);
	signal cnt_next, cnt_reg : natural range 0 to 20;
	signal out_next, out_reg : std_logic_vector(127 downto 0);
	
	signal finalResult : std_logic_vector(127 downto 0) := (others => '0');
	
	signal in_key, in_data, out_data, out_data_last : std_logic_vector(127 downto 0);
	
	
BEGIN
	-- control part : state register
	CP_SR : process(clk, rst_b) is
	begin
		if rst_b = '0' then
			state_reg <= RST_STATE;
			cnt_reg <= 0;
			out_reg <= (others => '0');
		elsif rising_edge(clk) then
			state_reg <= state_next;
			cnt_reg <= cnt_next;	
			out_reg <= out_next;
		end if;
	end process CP_SR;
	
	-- control part : next-state logic
	CP_NSL:  process(state_reg, start, cnt_reg) is
	begin
		state_next <= state_reg; -- avoid latches ?
		case state_reg is
			when ST_IDLE =>
					if start = '1' then
						state_next <= ST_LOAD;
					end if;
			when ST_LOAD =>
						state_next <= ST_CNT;
			when ST_CNT => 
						if (doneSignal = '1') then
							state_next <= ST_DONE;
						end if;
			when ST_DONE => 
				state_next <= ST_IDLE;
		end case;
	end process CP_NSL;
	
		-- datapath : routing mux
	DP_RMUX : process (state_reg, data_acc_reg, key, data_in, cnt_reg, out_data_last, out_data, key_acc_reg)
	begin	
	      
		ready <= '0';
		cnt_next <= cnt_reg;
		in_data <= data_in;
		in_key <= key;
		data_acc_next <= data_acc_reg;
		out_next <= out_reg;
		case state_reg is
				when ST_IDLE => 
					cnt_next <= 0;
					ready <= '1';
				when ST_LOAD =>
				    ld <= '1';
	                kld <=  '1';
					in_data <= data_in;
					in_key <= key;
					data_acc_next <= out_data;	
					cnt_next <= cnt_reg + 1;
					resetSys <= '1';
				when ST_CNT =>
				    ld <= '0';
	                kld <=  '0';	
					in_key	 <= key;
					in_data <= 	data_in;
				
					if(doneSignal = '1') then
					   finalResult <= out_data_last;
					   ready <= '1';
					   out_next <= data_acc_reg xor key_acc_reg;
					   cnt_next <= 0;
					end if;
						
				when ST_DONE => 
					ready <= '0';
					out_next <= data_acc_reg xor key_acc_reg;
		end case;
	end process DP_RMUX;
	
	rconstant <= rcon(cnt_reg);
	data_out <= finalResult;
	
	AESsys: aes_inv_cipher_top
	   PORT MAP(
	       clk =>clk,
	       rst => rst_b,
	       kld => kld,
	       ld => ld,
	       done => doneSignal,
	       key => key,
	       text_in => in_data,
	       text_out => out_data_last
	   );
END fsmd;	