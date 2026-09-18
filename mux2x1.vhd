library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity mux is
    port(
        a,b: in std_logic;
        s : in std_logic;
        y : out std_logic 
    );
    end mux;

architecture behavioral of mux is
    begin
        y <= a and s or b and (not(s));
    end behavioral;
    
