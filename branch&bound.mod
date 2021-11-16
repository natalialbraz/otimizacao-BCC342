/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restrição; */
var x1, >=0; #variavel nao inteira a ser analizada
var x2, >=0; #variavel nao inteira a ser analizada

/*funcao objetivo*/
maximize Z: 5*x1 + 4*x2;

/*Restrições*/
r1: x1 + x2 <= 5; #restrições PL1
r2: 10*x1 + 6*x2 <= 45; #restrições PL1
#r3: x1 <= 3; restrição PL2 (solução incumbente)
r4: x1 >= 4; #restrição PL3
#r5: x2 >= 1; #restrição PL4
r6: x2 <= 0; #restrição PL5 SOLUÇÃO INCUMBENTE é melhor que esse problema 

solve;

printf:"\n=== Solução ótima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
