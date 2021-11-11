#Modelo dos Produtos

#conjunto de índices
set Material := {1..3}; #materiais necessarios para a producao
set Produtos := {1..4}; #conjunto dos produtos

#parâmetros do problema
param preco{Produtos}; #preço de venda de cada produto
param disp_Mat{Material}; #disponibilidade de materia prima
param matriz_Mat{Material, Produtos}; #matriz de consumo de materiais por produto

#variaveis de decisão
var x{p in Produtos}, >=0, integer; #quantidades de cada produto produzido

#função objetivo
maximize lucro: sum{p in Produtos} x[p] * preco[p]; 

#restrições
Disp_Mat{m in Material}: sum{p in Produtos} x[p] * matriz_Mat[m, p] <= disp_Mat[m];

solve;

#entrada de dados
data;
param preco :=
1 100
2 80
3 120
4 20;
param disp_Mat :=
1 250
2 600
3 500;
param matriz_Mat :
	1	2	3	4:=
1	1	2	1	4
2	0	1	3	2
3	3	2	4	0;

end;