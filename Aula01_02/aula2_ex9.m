clear;
clc;
close;

N = 1000; %numero de experiencias
p = 0.01; %probabilidade de bug
n = 20; %n´umero de lanc¸amentos
lancamentos = rand(n,N) < p ;
contador_Andre = 0;
for u=1:n
  for i =1:N
    if(lancamentos(u,i)==1)
      contador_Andre++;
     endif
   endfor
 endfor
prob_Erro_Andre= contador_Andre/(N*n);

p = 0.05; %probabilidade de bug
n = 30; %n´umero de lanc¸amentos
lancamentos = rand(n,N) < p ;
contador_Bruno = 0;
for u=1:n
  for i =1:N
    if(lancamentos(u,i)==1)
      contador_Bruno++;
     endif
   endfor
 endfor
prob_Erro_Bruno= contador_Bruno/(N*n);

p = 0.001; %probabilidade de bug
n = 30; %n´umero de lanc¸amentos
lancamentos = rand(n,N) < p ;
contador_Carlos = 50;

for u=1:n
  for i =1:N
    if(lancamentos(u,i)==1)
      contador_Carlos++;
     endif
   endfor
 endfor

prob_Erro_Carlos= contador_Carlos/(N*n);

prob_exA_sqbug_Carlos = contador_Carlos/(contador_Carlos+contador_Bruno+contador_Andre)
prob_exA_sqbug_Bruno = contador_Bruno/(contador_Carlos+contador_Bruno+contador_Andre)
prob_exA_sqbug_Andre = contador_Andre/(contador_Carlos+contador_Bruno+contador_Andre)
