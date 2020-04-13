param N1:=50; #size of vector
param N2:=500;

param omega{j in 1..N2, i in 1..N1};
param quant; #percentil that I would find
param n_quant:= floor(N2*quant); #quantil that I would /find

set sorted_omega{i in 1..N1} = setof {j in 1..N2} omega[j,i] ordered by Reals; #sort data vector
param freq{i in 1..N1, j in 1..card(sorted_omega[i])}; #frequency vector

param element{i in 1..N1};	
param count; param count2;
param bool; #logical variable that is true while count < n_quant