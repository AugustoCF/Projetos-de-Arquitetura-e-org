library ieee;
use ieee.std_logic_1164.all;

entity porta is
    port( in_a : in std_logic;
        in_b : in std_logic;
        a_e_b : out std_logic
    );
end entity porta;

architecture a_porta of porta is
begin
    a_e_b <= in_a or in_b;
end architecture;