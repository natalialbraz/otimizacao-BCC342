/*variaveis*/
/* var nome_variavel, tipo_variavel: integer, binary, restrição; */
var xE, >=0; #quantidade de escrivaninhas produzidas
var xM, >=0; #quantidade de mesas produzidas
var xA, >=0; #quantidade de armários produzidos
var xP, >=0; #quantidade de prateleiras produzidas

/*funcao objetivo*/
maximize Z: 100*xE + 80*xM + 120*xA + 20*xP;

/*Restrições*/

tabua: xE + 2*xM + xA + 4*xP <= 250;
prancha: xM + 3*xA + 2*xP <= 600;
painel: 3*xE +2*xM + 4*xA <=500;
solve;

printf:"\n=== Solução ótima ===\n";
printf: "xE = %.3f \nxM = %.3f \nxA = %.3f \nxP = %.3f", xE, xM, xA, xP;

end;
