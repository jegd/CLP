library IEEE;
use IEEE.std_logic_1164.all;

entity shift_4b is
	port(
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
		d_i: in std_logic;
		q_o: out std_logic
	);
end;
		
architecture shift_4b_arq of shift_4b is 
-- Parte declarativa
component ffd is
	port(
		clk_i: in std_logic;
		rst_i: in std_logic;
		ena_i: in std_logic;
		d_i: in std_logic;
		q_o: out std_logic
	);
end component;
signal aux_1: std_logic;
signal aux_2: std_logic;
signal aux_3: std_logic;

begin
-- Parte descriptiva
	ffd_inst1: ffd
	port map(
		clk_i=> clk_i,
		rst_i=> rst_i,
		ena_i=> ena_i,
		d_i=> d_i,
		q_o=>aux_1
	);

	ffd_inst2: ffd
	port map(
		clk_i=> clk_i,
		rst_i=> rst_i,
		ena_i=> ena_i,
		d_i=> aux_1,
		q_o=>aux_2
	);

	ffd_inst3: ffd
	port map(
		clk_i=> clk_i,
		rst_i=> rst_i,
		ena_i=> ena_i,
		d_i=> aux_2,
		q_o=>aux_3
	);

	ffd_inst4: ffd
	port map(
		clk_i=> clk_i,
		rst_i=> rst_i,
		ena_i=> ena_i,
		d_i=> aux_3,
		q_o=>q_o
	);

end;