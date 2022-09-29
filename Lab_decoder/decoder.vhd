library IEEE;
use IEEE.std_logic_1164.all;

entity decoder is
    port( a: in std_logic;
        b: in std_logic;
        q0: out std_logic;
        q1: out std_logic;
        q2: out std_logic;
        q3: out std_logic
    );
end entity decoder;

architecture a_decoder of decoder is
begin
    q0 <=  (not a) and (not b);
    q1 <= (not a) and b;
    q2 <= a and (not b);
    q3 <= a and b;
end architecture;