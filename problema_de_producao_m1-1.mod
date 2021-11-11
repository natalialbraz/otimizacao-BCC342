/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restrição; */
var x1, integer, >=0; #quantidade de produção de P1
var x2, integer, >=0; #quantidade de produção de P2

/*funcao objetivo*/
maximize Z: 5*x1 + 2*x2;

/*Restrições*/
maquina1: x1 <= 3;
maquina2: x2 <= 4;
maquina3: x1 + 2*x2 <= 9;

solve;

printf:"\n=== Solução ótima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
