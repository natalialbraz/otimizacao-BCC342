/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restrição; */
var xA, integer, >=0; #total de malas produzidas diariamente
var xB, integer, >=0; #total de mochilas produzidas diariamente

/*funcao objetivo*/
maximize Z: 50*xA + 40*xB;

/*Restrições*/
corte: 2*xA + xB <= 300;
tingimento: xA+ 2.5*xB <= 540;
costura: 2*xA + 2*xB <= 440;
embalagem: 0.2*xA + 0.5*xB <= 300;

solve;

printf:"\n=== Solução ótima ===\n";
printf: "xA = %.3f \nxB = %.3f \n", xA, xB;

end;
