#Modelo do Problema da Mochila
# ele encontra a mochila com a maior utilidade, respeitando sua capacidade

#conjunto de �ndices
set E := {1..n}; #conjunto de itens

#par�metros do problema
param n, integer, >= 1; #numero de itens
param p, integer, >= 1; #capacidade da mochila
param u{E} >=0;  #utilidade dos itens
param v{E} >0;  #volume ocupado por cada item

#variaveis de decis�o
var x{E} binary; #declaracao da variavel binaria

#fun��o objetivo
maximize TotalUtility: sum{i in E} u[i] * x[i]; 

#restri��es
capacity: sum{i in E} v[i]*x[i] <= p;

solve;

#entrada de dados
data;
param n:=3;
param p:=10;
param u:= [1] 7 [2] 5 [3] 3;
param v :=
1 7
2 6
3 4;
end;
