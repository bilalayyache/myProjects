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

	component inv_aes_stage IS
		PORT(
		    d_in        :	IN  std_logic_vector(127 downto 0);
		    key	        :	IN  std_logic_vector(127 downto 0);
		    data_out    :	OUT std_logic_vector(127 downto 0);
		    clk         :   IN std_logic
		    );
	END component inv_aes_stage;
	
	component inv_aes_stage_last IS
		PORT(
		    d_in        :	IN  std_logic_vector(127 downto 0);
		    key	        :	IN  std_logic_vector(127 downto 0);
		    data_out    :	OUT std_logic_vector(127 downto 0);
		    clk         :   IN std_logic
		    );
	END component inv_aes_stage_last;
	
	component roundkeys is
    Port ( key : in STD_LOGIC_VECTOR (127 downto 0);
           r1,r2,r3,r4,r5,r6,r7,r8,r9,r10 : out STD_LOGIC_VECTOR (127 downto 0));
    end component;

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
	
	type state_type is (ST_IDLE, ST_LOAD, ST_CNT, ST_DONE);
	constant RST_STATE : state_type := ST_IDLE;
	signal state_reg, state_next : state_type;
	
	signal data_acc_next, data_acc_reg : std_logic_vector(127 downto 0);
	signal cnt_next, cnt_reg : natural range 0 to 10;
	signal out_next, out_reg : std_logic_vector(127 downto 0);
	
	signal r1,r2,r3,r4,r5,r6,r7,r8,r9,r10 : STD_LOGIC_VECTOR (127 downto 0); 
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
						if (cnt_reg = 9) then
							state_next <= ST_DONE;
						end if;
			when ST_DONE => 
				state_next <= ST_IDLE;
		end case;
	end process CP_NSL;
	
		-- datapath : routing mux
	DP_RMUX : process (state_reg, data_acc_reg, key, data_in, cnt_reg, out_data_last, out_data)
	begin	
		ready <= '0';
		cnt_next <= cnt_reg;
		in_data <= data_in;
		in_key <= r9;
		data_acc_next <= data_acc_reg;
		out_next <= out_reg;
		case state_reg is
				when ST_IDLE => 
					cnt_next <= 0;
					ready <= '1';
				when ST_LOAD =>
					in_data <= data_in xor r10;
					in_key <= r9;
					data_acc_next <= out_data;	
					cnt_next <= cnt_reg + 1;
				when ST_CNT =>
				    if (cnt_reg = 0) then
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 1) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r8;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 2) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r7;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 3) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r6;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 4) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r5;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 5) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r4;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 6) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r3;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 7) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r2;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 8) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= r1;
				        data_acc_next <= out_data;
						cnt_next <= cnt_reg + 1;
				    elsif (cnt_reg = 9) then
				        in_data <= 	data_acc_reg;
				        in_key	 <= key;
				        data_acc_next <= out_data_last;
						cnt_next <= 0;	    
				    end if;
						
				when ST_DONE => 
					ready <= '1';
					out_next <= data_acc_reg;
		end case;
	end process DP_RMUX;
	
	rconstant <= rcon(cnt_reg);
	data_out <= out_reg;
	
	roundKey_calc: roundkeys port map(key,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10);
	
	AES_last:	inv_aes_stage_last
	    PORT MAP(
		    d_in => in_data,
		    key => in_key,
		    data_out => out_data_last,
		    clk => clk
		    );	  
		
	AES_st:	inv_aes_stage
	    PORT MAP(
		    d_in => in_data,
		    key => in_key,
		    data_out => out_data,
		    clk => clk
		    ); 
		    			    		
	REG_DATA: pipe_reg
	    PORT MAP(
		    rsin => data_acc_next,
		    rsout => data_acc_reg,
		    clk => clk,
		    rst_b => rst_b
		    );	

END fsmd;