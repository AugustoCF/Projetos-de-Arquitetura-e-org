library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end;

architecture a_decoder_tb of decoder_tb is
    component decoder
    port( a: in std_logic;
        b: in std_logic;
        q0: out std_logic;
        q1: out std_logic;
        q2: out std_logic;
        q3: out std_logic
    );
end component;

signal a, b, q0, q1, q2, q3 : std_logic;

begin
    uut: decoder port map(
        a => a,
        b => b,
        q0 => q0,
        q1 => q1,
        q2 => q2,
        q3 => q3);
    process
    begin
        a <= '0';
        b <= '0';
        wait for 50 ns;
        a <= '0';
        b <= '1';
        wait for 50 ns;
        a <= '1';
        b <= '0';
        wait for 50 ns;
        a <= '1';
        b <= '1';
        wait for 50 ns;
        wait;
    end process;
end architecture;