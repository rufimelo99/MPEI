clear;
clc;
close;
%Considere 4 lanc¸amentos de uma moeda equilibrada. Seja X a variavel aleat ´ oria representativa do ´
%numero de coroas observados nos ´ 4 lanc¸amentos.
%(a) Estime, usando simulac¸ao com o Matlab/octave, a func¸ ˜ ao de probabilidade ˜ pX(x) da variavel ´
%aleatoria ´ X.



%3.a

%k : numero de coroas
%n : numero de lancamentos
%N : numero de experiencias

n=4;
N = 1e4;
lancamentos = rand(n,N)<0.5;
resultados = sum(lancamentos);
contador_1cara=0;
contador_2caras=0;
contador_3caras=0;
contador_4caras=0;
contador_0caras=0;
for u=1:N
  if(resultados(1,u)==1)
    contador_1cara++;
  elseif(resultados(1,u)==2)
    contador_2caras++;
  elseif(resultados(1,u)==3)
    contador_3caras++;
   elseif(resultados(1,u)==4)
    contador_4caras++;
   elseif(resultados(1,u)==0)
    contador_0caras++;
  endif
endfor

contador_0caras;
contador_1cara;
contador_2caras;
contador_3caras;
contador_4caras;

%Espaco de Amostragem
X = [0,1,2,3,4];
prob = zeros(1,5);
prob(1,1) =  contador_0caras / N;
prob(1,2) =  contador_1cara / N;
prob(1,3) =  contador_2caras / N;
prob(1,4) =  contador_3caras / N;
prob(1,5) =  contador_4caras / N;

prob;
stem(X,prob)

%3.b

%E[X]
valor_esperado = (contador_0caras*0+contador_1cara*1+contador_2caras*2+contador_3caras*3+contador_4caras*4)/N;

%Var(X)
variancia = 0; 
for i =1:5
  variancia = variancia + (prob(1,i)-valor_esperado)^2;
endfor
variancia;

%Desvio Padrao
Desvio_padrao = sqrt(variancia);

fprintf("O valor esperado é: %d \nA varianca é: %i \nO desvio padrso é: %i \n", valor_esperado, variancia, Desvio_padrao)

%3.c
%Distribuição de variavel binomial
fprintf("O tipo da distribuic¸ao da variavel aleatoria X é Distribuicao de variavel binomial\n")
fprintf("A sua expressao é: nchoosek(n,k) * p^k * (1-p)^(n-k)\n")


%3.d
probabilidade0 = nchoosek(4,0)*0.5^0*(1-0.5)^(4-0)
probabilidade1 = nchoosek(4,1)*0.5^1*(1-0.5)^(4-1)
probabilidade2= nchoosek(4,2)*0.5^2*(1-0.5)^(4-2)
probabilidade3 = nchoosek(4,3)*0.5^3*(1-0.5)^(4-3)
probabilidade4 = nchoosek(4,4)*0.5^4*(1-0.5)^(4-4)


%3.e


prob_pelomenos_2 = probabilidade2+probabilidade3+probabilidade4
%ii. A probabilidade de obter ate 1 coroa; ´
prob_max_1 = probabilidade0 + probabilidade1



%iii. A probabilidade de obter entre 1 e 3 coroas.
prob_entre_1_3 = probabilidade1+probabilidade2+probabilidade3