/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restrição; */
var x1, >=0; #variavel nao inteira a ser analizada
var x2, >=0; #variavel nao inteira a ser analizada

/*funcao objetivo*/
maximize Z: 3*x1 + 3*x2;

/*Restrições*/
r1: x1 + 4*x2 <= 12; #restrições PL1
r2: 6*x1 + 4*x2 <= 24; #restrições PL1

#lado esquerdo do PL1
#PL1a: x1<=2; #tornar x2 inteiro -----
#PL2a: x2<=1; #soulução inteira e INCUMBENTE
#PL2b: x2>=2; #tornar x2 inteiro ----
#PL3a: x2<=2; #solução INCUMBENTE e mellhor que anterior ----
#PL3b: x2 >= 3; #solução inteira mas pior do que a anterior

#PL1b: x1 >= 3; #tornar x2 inteiro 7777
#PL4b: x2 >= 2; #nao existe solução ótima
#PL4a: x2 <=1; #tornar x1 inteiro 777777
#PL5a: x1 <= 3; #solução INCUMBENTE igual a PL3a
#PL5b: x1 >= 4; #INCUMBENTE

#lado direito do PL1
PL1a:  x2 <= 2; #tornar x1 inteiro
#PL2a: x1 <= 2; # incumbente
PL2b: x1 >= 3; #tornar x2 inteiro
PL3a: x2 <= 1; #tornar x1 inteiro
PL4a: x1 <= 3;







#lado direito do PL1

solve;

printf:"\n=== Solução ótima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
