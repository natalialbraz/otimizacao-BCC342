/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restrição; */
var x1, >=0; #variavel nao inteira a ser analizada
var x2, >=0; #variavel nao inteira a ser analizada

/*funcao objetivo*/
maximize Z: 3*x1 + 2*x2;

/*Restrições*/
r1: 2*x1 + 5*x2 <= 9; #restrições PL1
r2: 4*x1 + 2*x2 <= 9; #restrições PL1

#PL2: x1 <= 1; #PL1 é melhor, mas vamos tentar tornar x2 inteiro
#PL3: x2<= 1; #tentar tornar x1 inteiro
#PL3a: x1<= 1; #solução  inteira e INCUMBENTE

PL4: x1 >= 2; #PL1 é melhor, mas vamos tentar tornar x2 inteiro
PL5: x2 <= 0; #tentar tornar x1 inteiro
PL6: x1 <= 2; #solução inteira e e INCUMBENTE

#a melhor solução ótima é a do PL6

#lado direito do PL1
#PL4: x1 >= 2; #PL1 é melhor, mas vamos tentar tornar x2 inteiro
#PL5: x2 <= 0; #tentar tornar x1 inteiro
#PL6: x1 <= 2; #solução inteira e melhor que PL3




solve;

printf:"\n=== Solução ótima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
