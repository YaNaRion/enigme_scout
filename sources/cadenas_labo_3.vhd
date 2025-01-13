---------------------------------------------------------------------------------------------------
-- 
-- cadenas_labo_3.vhd
--
-- v. 1.0 Pierre Langlois 2022-01-21 laboratoire #3 INF3500, fichier de démarrage
--
---------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity cadenas_labo_3 is
    generic (
        M : positive := 5; -- le nombre d'entrées dans la combinaison
        N : positive := 4 -- le nombre de boutons
        );
    port (
        reset, clk : in std_logic;
        boutons : in std_logic_vector(N - 1 downto 0);
        switch : in std_logic_vector(15 downto 0);
        ouvrir : out std_logic;
        alarme : out std_logic;
        message : out string
        );
end cadenas_labo_3;

architecture arch of cadenas_labo_3 is
    
    type etat_type is (e_00, e_01, e_02, e_03, e_04, e_05, e_06, e_07, e_08, e_09, e_10);
    signal etat : etat_type := e_00;
    
 --    type combinaison_type is array (0 to M - 1) of std_logic_vector(N - 1 downto 0);
 --    signal combinaison : combinaison_type;
 --    constant combinaison_base : combinaison_type := ("0010", "0100", "1000", "0001", "0010");
	-- signal combinaison_mod : combinaison_type := combinaison_base;
 --    signal combinaison_temps, combianison_nul : combinaison_type;
    
begin
    
    -- processus pour la séquence des états
    process(all) is
        variable count : integer := 0; -- Pour la partie 2
    begin
        if reset = '1' then -- remet la state machine a 0
            etat <= e_00;
        elsif rising_edge(clk) then
            case switch is 
                when "0000000000000001" =>
                    etat <= e_01;
                -- FACILE
                when "0001111011010010" => -- T9
                    etat <= e_02;
                when "0110101111000110" => -- Samourail
                    etat <= e_03;
                when "0001101100111001" => -- Avocat
                    etat <= e_04;
                -- MOYEN
                when "0000000110100100" => -- Tic-Tac-To
                    etat <= e_05;
                when "0010010010001000" => -- Fruit
                    etat <= e_06;
                when "0001111011001100" => -- Porter
                    etat <= e_07;
                -- DIFFICILE
                when "0000000010000001" => -- Equation bool
                    etat <= e_08;
                when "0001010111010101" => -- Franc-Macon
                    etat <= e_09;
                when "0101111100000101" => -- Algebre
                    etat <= e_10;
                when others =>
                    etat <= e_00;
            end case;
        end if;
    end process;
    
    -- processus pour les sorties
    process(all)
    begin
        case etat is
            when e_00 =>
                ouvrir <= '0';
                alarme <= '1';
                message <= "NOPE";
            when e_01 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "YAYA";
            -- FACILE
            when e_02 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-09-";
            when e_03 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-00-";
            when e_04 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-08-";
            -- MOYEN
            when e_05 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-32-";
            when e_06 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-10-";
            when e_07 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-24-";
            -- DIFFICILE
            when e_08 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-13-";
            when e_09 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-15-";
            when e_10 =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "-37-";
            when others =>
                ouvrir <= '0';
                alarme <= '0';
                message <= "eror";
        end case;
    end process;
    
end arch;
