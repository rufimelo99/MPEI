clear;
clc;
close;

%X pecas defeituosas em 5 pecas
%4.a
n=5;
N = 1e5;
lancamentos = rand(n,N)<0.3;
resultados = sum(lancamentos);
contador_1defeitos=0;
contador_2defeitos=0;
contador_3defeitos=0;
contador_4defeitos=0;
contador_5defeitos=0;
contador_0defeitos=0;


for u=1:N
  if(resultados(1,u)==1)
    contador_1defeitos++;
  elseif(resultados(1,u)==2)
    contador_2defeitos++;
  elseif(resultados(1,u)==3)
    contador_3defeitos++;
   elseif(resultados(1,u)==4)
    contador_4defeitos++;
   elseif(resultados(1,u)==5)
    contador_5defeitos++;
   elseif(resultados(1,u)==0)
    contador_0defeitos++;
  endif
endfor

contador_1defeitos;
contador_2defeitos;
contador_3defeitos;
contador_4defeitos;
contador_5defeitos;
contador_0defeitos;

%Espaco de Amostragem
X = [0,1,2,3,4,5];
prob = zeros(1,6);
prob(1,1) =  contador_0defeitos / N;
prob(1,2) =  contador_1defeitos / N;
prob(1,3) =  contador_2defeitos / N;
prob(1,4) =  contador_3defeitos / N;
prob(1,5) =  contador_4defeitos / N;
prob(1,6) =  contador_5defeitos / N;

prob;
subplot(1,2,1);
bar(X,prob, 'hist', 'r');
xlabel('Pecas defeituosas');
title('Simulacao');
prob0 = variavel_binomial(5,0,0.3);
prob1 = variavel_binomial(5,1,0.3);
prob2 = variavel_binomial(5,2,0.3);
prob3 = variavel_binomial(5,3,0.3);
prob4 = variavel_binomial(5,4,0.3);
prob5 = variavel_binomial(5,5,0.3);
valores = zeros(1,6);

valores(1,1) =  prob0;
valores(1,2) =  prob1;
valores(1,3) =  prob2;
valores(1,4) =  prob3;
valores(1,5) =  prob4;
valores(1,6) =  prob5;

subplot(1,2,2);
bar(X,valores, 'hist', 'g');
xlabel('Pecas defeituosas');
title('Analiticamente');


%4.b

prob_max_2_exp = prob(1,1) + prob(1,2) + prob(1,3);
prob_max_2_teo = prob0 + prob1 + prob2;
fprintf('Probabilidade de no maximos duas pecas serem defeituosas\n');
fprintf('Simulacao: %s\n', num2str(prob_max_2_exp) );
fprintf('Analiticamente: %s\n', num2str(prob_max_2_teo) );