#Modelo dos Produtos

#conjunto de índices
set Maquinas := {1..3}; #maquinas necessarias para a producao
set MO := {1..2}; #mao de obra necessaria
set Produtos := {1..4}; #conjunto dos produtos

#parâmetros do problema
param PV{Produtos}; #preço de venda de cada produto
param pot{Produtos}; #potencial maximo de venda de cada produto
param disp_Mq{Maquinas}; #disponibilidade de maquinas
param disp_Mo{MO}; #disponibilidade de mao-de-obra
param matriz_Mq{Maquinas, Produtos}; #matriz de consumo das maquinas por produto
param matriz_Mo{MO, Produtos}; #matriz de consumo da mao-de-obra por produto

#variaveis de decisão
var x{p in Produtos}, >=0, integer; #quantidades de cada produto produzido

#função objetivo
maximize lucro: sum{p in Produtos} x[p] * PV[p]; 

#restrições
Disp_Mq{m in Maquinas}: sum{p in Produtos} x[p] * matriz_Mq[m, p] <= disp_Mq[m];
Disp_Mo{n in MO}: sum{m in Produtos} x[m] * matriz_Mo[n, m] <= disp_Mo[n];
Pot_max_venda{j in Produtos}: x[j] <= pot[j];

solve;

#entrada de dados
data;
param PV :=
1 10
2 8
3 9
4 7;
param pot :=
1 70
2 60
3 40
4 20;
param disp_Mq :=
1 80
2 20
3 40;
param disp_Mo :=
1 120
2 160;
param matriz_Mq :
	1	2	3	4:=
1	5	4	8	9
2	2	6	0	8
3	3	4	6	2;
param matriz_Mo :
	1	2	3	4:=
1	2	4	2	8
2	7	3	0	7;
end;
