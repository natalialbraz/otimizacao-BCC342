#Problema da Manufatura

#conjuntos 
set I;   #indice do conjunto das maquinas
set J;   #indice do conjunto de produtos

#parâmetros
param b{i in I}, >=0;   #vetor referente à disponibilidade das maquinas, anexado ao  seu indice I
param f; #conversao
param d{j in J};   #referente ao lucro, anexado ao indice de produtos
param matriz{i in I, j in J}, >=0; #matriz maquinas x produtos
param c{j in J} := f * d[j] * 1000;    #custos 

#variaveis de decisao
var x{j in J}, >=0;  #variaveis de decisao

#função objetivo
maximize z: sum{j in J} c[j] * x[j];   #funcao objetivo
 

#restrições
maquinas{i in I}: sum{j in J} matriz[i,j] * x[j] <= b[i];

data;
set I:=  Maq1 Maq2 Maq3;
set J:= Pro1 Pro2;

param matriz
: 	Pro1 Pro2 :=
Maq1 1   0
Maq2 0   1
Maq3 1   2;

param b :=
	Maq1 3
	Maq2 4
	Maq3 9;

param d :=
	Pro1 5
	Pro2 2;

param f := 2.04;

end;