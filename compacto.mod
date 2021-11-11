#Modelo das Ligas

#conjunto de índices
set MP := {1..3}; #conjunto de matérias primas
set Ligas := {1..2}; #conjunto das ligas

#parâmetros do problema
param PV{Ligas}; #preço de venda de cada liga
param disp{MP}; #disponibilidade de cada matéria prima
param matriz{MP, Ligas}; #matriz de consumo

#variaveis de decisão
var x{Ligas}, >=0; #toneladas de cada liga produzida

#função objetivo
maximize lucro: sum{j in Ligas} x[j] * PV[j]; 

#restrições
Disp_Mat_Prima{i in MP}: sum{j in Ligas} x[j] * matriz[i, j] <= disp[i];

solve;

#entrada de dados
data;
param PV :=
1 30
2 50;
param disp :=
1 16
2 11
3 15;
param matriz :
	1	2:=
1	2	1
2	1	2
3	1	3;
end;
