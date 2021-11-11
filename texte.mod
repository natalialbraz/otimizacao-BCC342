/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restri��o; */

var xA, >=0; #ton liga tipo A
var xB, >=0; #ton liga tipo B

/*funcao objetivo*/
maximize Z: 30*xA + 50*xB

/*Restri��es*/
subject to
cobre: 2*xA + xB <= 26;
zinco: xA + 2*xB <= 20;
chumbo: xA + 3*xB <= 25;
solve;
printf:"\n=== Solu��o �tima ===\n";
printf: "xA = %.3f \nxB = %.3f\n", xA, xB;
end;