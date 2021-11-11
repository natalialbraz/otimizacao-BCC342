#conjuntos 
set I;
set N;
#parâmetros
param matriz{n in N, i in I}; #matriz nutri x ingre
param custo_ingre{i in I};
param nece_nutri {n in N};
#variaveis de decisao
var x{i in I}, >=0;

#função objetivo
minimize custo: sum{i in I} custo_ingre[i] * x[i];

#restrições
r1{n in N}: sum{i in I} matriz[n,i] * x[i] >= nece_nutri[n];
r2: sum{i in I} x[i] = 1;

data;
set I:= Osso Soja Peixe;
set N:= Proteina Calcio;

param matriz
: Osso Soja Peixe :=
Proteina 0.2 0.5 0.4
Calcio 0.6 0.4 0.3;

param custo_ingre :=
	Osso 0.56
	Soja 0.81
	Peixe 0.46;

param nece_nutri :=
	Proteina 0.3
	Calcio 0.5;

end;