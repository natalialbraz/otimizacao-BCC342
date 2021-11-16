param qt_tarefas, integer, >= 0;
param M, integer, >=0;

/*Conjuntos*/
set T:= 1.. qt_tarefas;
/*Parametros*/
param P{i in T};
param D{i in T};
param C{i in T};
/*var decision*/
var At{T}, integer, >= 0;
var Ad{i in T}, integer, >= 0;
var x{i in T}, integer >= 0;
var y{i in T, j in T}, binary;
/*fun obj*/
minimize custo: sum{i in T}C[i]*At[i];
s.t. r1{i in T}: x[i] + Ad[i] - At[i] = D[i] - P[i];
s.t. r2{i in T, j in T: i!= j}: M*(1-y[i,j]) + (x[j]-x[i]) >= P[i];
s.t. r3{i in T, j in T: i!= j}: M*y[i,j]+x[i] - x[j] >= P[j];
solve;
data;

param qt_tarefas := 3;
param M := 10000;
param P:= 1 5
   2 20
   3 15;
   
param D := 1 25
   2 22
   3 35;
   
 param C:= 1 19
    2 12
    3 34;