library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity demux is
    port(
        i : in std_logic;
        s1,s0 : in std_logic;
        y1,y2,y3,y4 : out std_logic
    );
    end demux;

architecture behavioral of demux is
    begin
        y1 <= i and not((s1 and s0));
        y2 <= i and s1 and not(s0);
        y3 <= i and not(s1) and s0;
        y4 <= i and s1 and s0;
    end behavioral;
    
    
    
