library IEEE;
use IEEE.std_logic_1164.all;

entity paridade is
    port(
        a0: in std_logic;
        a1: in std_logic;
        a2: in std_logic;
        s: out std_logic
    );
end entity paridade;

architecture a_paridade of paridade is
    begin
        s <= (a0 and (not a1) and (not a2)) or ((not a0) and a1 and (not a2)) or ((not a0) and (not a1) and a2) or (a0 and a1 and a2);
end architecture;