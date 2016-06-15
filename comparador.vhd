library ieee;
use ieee.std_logic_1164.all;
use work.pack_lab5.all;

ENTITY comparador is
	
	port ( 	rst_l : in std_logic;
			in1 : in std_logic_vector(WIDTH_BUS-1 downto 0);
			in2 : in std_logic_vector(WIDTH_BUS-1 downto 0);
			equal_out : out std_logic );
			
END comparador;


ARCHITECTURE arq1 of comparador is

BEGIN

	process (rst_l,in1,in2) begin
		if (rst_l='0') then
			equal_out<='0';
		
		elsif (in1=in2) then
			equal_out<='1';
			
		else
         equal_out<='0';
         
      end if;
	end process;
	
END arq1;