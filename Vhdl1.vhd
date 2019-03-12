library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vhdl1 is
	port( code : in std_logic_vector( 3 downto 0);
			segments: out std_logic_vector (6 downto 0)
		);
	
end entity;

architecture a0 of vhdl1 is
begin
with code select segments <= --careful, numbering might be reversed
	"0000001" when "0000",
	"1001111" when "0001",
	"0010010" when "0010",
	"0000110" when "0011",
	"1001100" when "0100",
	"0100100" when "0101",
	"0100000" when "0110",
	"0001111" when "0111",
	"0000000" when "1000",
	"0000100" when "1001",
	"0001000" when "1010",
	"1100000" when "1011",
	"0110001" when "1100",
	"1000010" when "1101",
	"0110000" when "1110",
	"0111000" when "1111",
	"1110111" when others;
end a0;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_add is
	port(x,y,Cin:in std_logic;
			s,cout: out std_logic
	);
end entity;

architecture a0 of full_add is
begin
	s<=(x XOR y) XOR cin;
	cout<=(x and y) or (x and cin) or (y and cin);
end a0;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity g05_adder is
    Port (     A,B            :in std_logic_vector(4 downto 0);
        decoded_A        :out std_logic_vector(13 downto 0);
decoded_B        :out std_logic_vector(13 downto 0);
decoded_AplusB    :out std_logic_vector(13 downto 0)
);
End entity;

Architecture a0 of g05_adder is
    Component full_add is 
        Port (    x,y,Cin : in std_logic;
    S,cout  : out std_logic
	);
	End component full_add;


 Component vhdl1 is
        Port (       code  : in std_logic_vector(3 downto 0);
               segments : out std_logic_vector(6 downto 0)
	);
    End component vhdl1;

    Signal c_int, inA1, inA2, inB1, inB2, inS1, inS2 : std_logic_vector(3 downto 0);
    Signal outA1, outA2, outB1, outB2, outS1, outS2 : std_logic_vector(6 downto 0);
Begin
    inA1<= A(3 downto 0);
    inA2(0)<= A(4);
	 inA2(3 downto 1)<="000";
    inB1<= B(3 downto 0);
    inB2(0)<= B(4);
	 inB2(3 downto 1)<="000";
	Xfull_add0 : full_add port map(inA1(0),inB1(0),'0',inS1(0),c_int(0));
	Xfull_add1 : full_add port map(inA1(1),inB1(1),c_int(0),inS1(1),c_int(1));
	Xfull_add2 : full_add port map(inA1(2),inB1(2),c_int(1),inS1(2),c_int(2));
	Xfull_add3 : full_add port map(inA1(3),inB1(3),c_int(2),inS1(3),c_int(3));
	Xfull_add4 : full_add port map(inA2(0),inB2(0),c_int(3),inS2(0),inS2(1));
	vhdl1A1 : vhdl1 port map(inA1,decoded_A(6 downto 0));
	vhdl1A2 : vhdl1 port map(inA2,decoded_A(13 downto 7));
	vhdl1B1 : vhdl1 port map(inB1,decoded_B(6 downto 0));
	vhdl1B2 : vhdl1 port map(inB2,decoded_B(13 downto 7));
	vhdl1S1 : vhdl1 port map(inS1,decoded_AplusB(6 downto 0));
	vhdl1S2 : vhdl1 port map(inS2,decoded_AplusB(13 downto 7));

End a0;








