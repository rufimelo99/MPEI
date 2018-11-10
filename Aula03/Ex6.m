clear;
clc;
close;
warning('off','all');


%Ex6

N = 1e3;  %nao posso colocar um numero elevado pq demora bastante a correr
p = 0.001;
chips = rand(8000,N) > 1-p;
contador_de_7defeitos = 0;

for u = 1: N
contador_defeitos=0;
  for i = 1 : 8000
    if( chips(i, u) == 1)
      contador_defeitos ++;
     endif
  end
if(contador_defeitos == 7)
  contador_de_7defeitos++;
endif
end

prob = contador_de_7defeitos/N;


n = 8000; %pecas
k = 7; %pecas defeituosas
p = 0.001; 


a = n*p;
poisson = (((a)^k)/factorial(k))*e^-a;

fprintf("Probabilidade de haver 7 pecas defeituosas: \n");
fprintf("Binomial: %s\n", num2str(prob));
fprintf("Poisson: %s\n", num2str(poisson));