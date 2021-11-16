/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restri��o; */
var x1, >=0; #variavel nao inteira a ser analizada
var x2, >=0; #variavel nao inteira a ser analizada

/*funcao objetivo*/
maximize Z: 3*x1 + 2*x2;

/*Restri��es*/
r1: 2*x1 + 5*x2 <= 9; #restri��es PL1
r2: 4*x1 + 2*x2 <= 9; #restri��es PL1

#PL2: x1 <= 1; #PL1 � melhor, mas vamos tentar tornar x2 inteiro
#PL3: x2<= 1; #tentar tornar x1 inteiro
#PL3a: x1<= 1; #solu��o  inteira e INCUMBENTE

PL4: x1 >= 2; #PL1 � melhor, mas vamos tentar tornar x2 inteiro
PL5: x2 <= 0; #tentar tornar x1 inteiro
PL6: x1 <= 2; #solu��o inteira e e INCUMBENTE

#a melhor solu��o �tima � a do PL6

#lado direito do PL1
#PL4: x1 >= 2; #PL1 � melhor, mas vamos tentar tornar x2 inteiro
#PL5: x2 <= 0; #tentar tornar x1 inteiro
#PL6: x1 <= 2; #solu��o inteira e melhor que PL3




solve;

printf:"\n=== Solu��o �tima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
