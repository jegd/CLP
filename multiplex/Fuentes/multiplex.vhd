library IEEE;
use IEEE.std_logic_1164.all;

entity multiplex is
	port(
		sel_i: in std_logic;
		a_i: in std_logic;
		b_i: in std_logic;
		s_o: out std_logic
	);
end;
		
architecture multiplex_arq of multiplex is 
-- Parte declarativa
	signal aux_1: std_logic;
	signal aux_2: std_logic;
	signal aux_3: std_logic;
begin
-- Parte descriptiva
	aux_1<= not sel_i;
	aux_2<= a_i and aux_1;
	aux_3<= b_i and sel_i;
	s_o<= aux_1 or aux_3;
end;