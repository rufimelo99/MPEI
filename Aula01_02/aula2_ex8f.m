clear;
clc;
close;


N= 1e4;    %experiencias
n = 5;    %lancamentos
%A = 10;     %alfabeto
p = zeros(1, 10);
c=1;
for A=11:20
  fprintf("Resultados para %i pessoas \n\n", A)
  p(c,1) = exercicio8_p2(N, n, A);
  c++;
  fprintf("\n\n")
endfor


plot(10:1:20, p);
%Fazer grafico!!!!!!!!

