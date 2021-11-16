#Problema da produção agrícola
#conjunto de índices
set Fazendas := {1..3}; #fazendas para fazer a plantação
set Culturas:= {1..3}; #tipos de culturas

#parâmetros do problema
param lucro{Culturas}; #preço de venda de cada cultura por area plantada
param custo{Fazendas};  #custo de uso da fazenda
param disp_agua{Fazendas};  #disponibilidade de agua nas fazendas
param area{Fazendas}; #disponibilidade de area de plantio nas fazendas
param cult_min{Culturas};  #area minima de plantio de cada cultura 
param cons_agua{Culturas};  #consumo de agua 


#variaveis de decisão
var x{Fazendas, Culturas}, >=0, integer; #quantidades de cada produtos cultivados em cada fazenda
var y{Fazendas} binary; #1 se a fazenda for utilizada, 0 caso contrário

#função objetivo
maximize Z: sum{i in Fazendas, j in Culturas} x[i,j] * lucro[j] -sum{i in Fazendas} y[i] * custo[i];

#restrições
Area_fazenda{j in Fazendas}: sum{i in Culturas} x[i,j] <= area[j];
Agua_fazenda{j in Fazendas}: sum{i in Culturas} cons_agua[i]*x[i,j] <= disp_agua[j];
Area_min{i in Culturas}: sum {j in Fazendas} x[i,j] >= cult_min[i];

solve;

#entrada de dados
data;

/*
param area:= [1] 400 [2] 600 [3] 300;
param disp_agua:= [1] 600 [2] 800 [3] 380;
param custo:= [1] 12000 [2] 15000 [3]10000;
param cult_min :=
1 100
2 150
3 500;
param cons_agua :=
1 3
2 2
3 1.5;
param lucro :=
1 400
2 300
3 100;

end;
*/

param area:= [1] 329 [2] 720 [3] 430;
param disp_agua:= [1] 520 [2] 975 [3] 240;
param custo:= [1] 13000 [2] 16000 [3]14200;
param cult_min :=
1 445
2 222
3 322;
param cons_agua :=
1 4
2 5
3 2.3;
param lucro :=
1 520
2 430
3 750;

end;
