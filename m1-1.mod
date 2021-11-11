/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restri��o; */
var x1, integer, >=0; #quantidade de produ��o de P1
var x2, integer, >=0; #quantidade de produ��o de P2

/*funcao objetivo*/
maximize Z: 5*x1 + 2*x2;

/*Restri��es*/
maquina1: x1 <= 3;
maquina2: x2 <= 4;
maquina3: x1 + 2*x2 <= 9;

solve;

printf:"\n=== Solu��o �tima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
