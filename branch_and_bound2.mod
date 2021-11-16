/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restri��o; */
var x1, >=0; #variavel nao inteira a ser analizada
var x2, >=0; #variavel nao inteira a ser analizada

/*funcao objetivo*/
maximize Z: 2*x1 + 3*x2;

/*Restri��es*/
r1: 5*x1 + 7*x2 <= 35; #restri��es PL1
r2: 4*x1 + 9*x2 <= 36; #restri��es PL1
#lado esquerdo do PL1
#PL2: x1 <= 3; #tornar x2 inteiro
#PL4: x2<= 2; #solu��o inteira e INCUMBENTE ---
#lado direito 
#PL5: x2 >= 3; #tornar x1 inteiro
#PL6: x1 <= 2; #tornar x2 inteiro
#PL8: x2<=3; #solu��o inteira e INCUMBENTE (melhor d PL4)

#lado direito do PL1
PL3: x1 >= 4; #tornar x2 inteiro
#PL3D: x2 >= 3; #nao possui solu��o otima
PL3E: x2 <= 2; # tornar x1 inteiro
PL9: x1 <= 4; #solu��o inteira e INCUMBENTE (melhor do que PL8)
#lado direito
#PL10: x1 >= 5; #tornar x2 inteiro
#PL11: x2<=1; #tornar x1 inteiro
#PL12: x1<=5; #solu��o inteira, por�m menos �tima que encontradas anteriormente 



solve;

printf:"\n=== Solu��o �tima ===\n";
printf: "x1 = %.3f \nx2 = %.3f \n", x1, x2;

end;
