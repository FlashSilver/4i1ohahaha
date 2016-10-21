library ieee;
use ieee.std_logic_1164.all;
use work.c31L_pack.all;

entity addsub_1bit is
	port(
		X: IN std_logic;
		Y: IN std_logic;
		C: IN std_logic;
		A: IN std_logic;
		S: OUT std_logic;
		CB: OUT std_logic
	);
END addsub_1bit;


architecture beh_half of addsub_1bit is

signal not_X, not_Y, not_C, not_A, and1, and2, and3, and4, and5, and6, and7, and8, and9, and10, and11, and12, or1, or2, or3, or4:std_logic;

begin
	not_X <= not X after 5ns;
	not_Y <= not Y after 5ns;
	not_C <= not C after 5ns;
	not_A <= not A after 5ns;

	and1 <= Y and C after 10ns;
	and2 <= A and X after 10ns;
	and3 <= not_A and not_X after 10ns;
	and4 <= Y and not_C after 10ns;
	and5 <= not_Y and C after 10ns;
	and6 <= or1 and or2 after 10ns;

	or1 <= and2 or and3 after 10ns;
	or2 <= and4 or and5 after 10ns;

	CB <= and1 or and6 after 10ns;


	and7 <= Y and C after 10ns;
	and8 <= not_Y and not_C after 10ns;
	and9 <= not_Y and C after 10ns;
	and10 <= Y and not_c after 10ns;
	and11 <= X and or3 after 10ns;
	and12 <= not_X and or4 after 10ns;

	or3 <= and7 or and8 after 10ns;
	or4 <= and9 or and10 after 10ns;

	S <= and11 or and12;

end beh_half;