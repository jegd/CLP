library IEEE;
use IEEE.std_logic_1164.all;

entity shift_4b_tb is
end;
		
architecture shift_4b_tb_arq of shift_4b_tb is 
-- Parte declarativa
	component shift_4b is
	port(
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
		d_i: in std_logic;
		q_o: out std_logic
	);
	end component;
  	signal clk_tb: std_logic := '0';
  	signal rst_tb: std_logic := '1';
  	signal ena_tb: std_logic := '0';
  	signal d_tb: std_logic := '0';
  	signal q_tb: std_logic;
	
begin
-- Parte descriptiva
	clk_tb <= not clk_tb after 10 ns;
	rst_tb <= '0' after 20 ns;
	ena_tb <= '1' after 20 ns;
	d_tb <= '0' after 20 ns, '1' after 30 ns, '0'  after 50 ns, '1' after 60 ns,'1' after 70 ns;

	DUT: shift_4b
		  port map(
			clk_i => clk_tb,
			rst_i => rst_tb,
			ena_i => ena_tb,
			d_i => d_tb,
			q_o => q_tb
		  );

end;