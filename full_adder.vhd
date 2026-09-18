library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity full_adder is 
port(
    a,b,cin : in std_logic;
    sum,carry : out std_logic
);
end full_adder;

architecture behavioral of full_adder is
    begin
        sum <= a xor b xor cin;
        carry <= a and b or b and cin or cin and a;
    end behavioral;
