/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restri��o; */
var x1, >=0; #variavel nao inteira a ser analizada
var x2, >=0; #variavel nao inteira a ser analizada

/*funcao objetivo*/
maximize Z: 5*x1 + 4*x2;

/*Restri��es*/
r1: x1 + x2 <= 5; #restri��es PL1
r2: 10*x1 + 6*x2 <= 45; #restri��es PL1
#r3: x1 <= 3; restri��o PL2 (solu��o incumbente)
r4: x1 >= 4; #restri��o PL3
#r5: x2 >= 1; #restri��o PL4
r6: x2 <= 0; #restri��o PL5 SOLU��O INCUMBENTE � melhor que esse problema 

solve;

printf:"\n=== Solu��o �tima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
