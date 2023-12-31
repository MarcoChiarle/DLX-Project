library ieee;
use ieee.std_logic_1164.all;

entity comp4Branch is
    generic(Nbit : integer)
    port(   A:    in  std_logic_vector(Nbit-1 downto 0);
            cond: out std_logic );
end comp4Branch;

architecture behavioral of com4Branch is
begin

    comp: process( A )
    begin

        if ( unsigned(A) = (others => '0') ) then
        cond <= '1';

        else 
        cond <= '0';

        end if;
        
    end process;

end behavioral;