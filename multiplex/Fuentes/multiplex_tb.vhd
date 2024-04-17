library IEEE;
use IEEE.std_logic_1164.all;

entity multiplex_tb is
end;
		
architecture multiplex_tb_arq of multiplex_tb is 
-- Parte declarativa
component multiplex is
	port(
		sel_i: in std_logic;
		a_i: in std_logic;
		b_i: in std_logic;
		s_o: out std_logic
	);
end component;
  	signal sel_tb: std_logic:= '1';
	signal a_tb: std_logic:= '0';
	signal b_tb: std_logic := '0';
	signal s_o_tb: std_logic:= '0';
begin
-- Parte descriptiva
		sel_tb <= '0' after 10 ns, '1' after 20 ns;
		a_tb <= '1' after 10 ns;
	   b_tb <= '1' after 30 ns;

	DUT: multiplex
		  port map(
		  	sel_i => sel_tb,
			a_i => a_tb,
			b_i => b_tb,
			s_o => s_o_tb
		  );

end;