clear;
clc;
close;

N= 500; %n´umero de experiˆencias
p = 1/100; %probabilidade de ter acertar no alvo especifico
m = 100; %umero de alvos
n = 20; %n´umero de dardos

contador = 0;

r = randi(100,N, n);

for t=1:N
  temporario = r(t,:);
  
  for x = 1:n ;
    resultadoDeLancamento =  temporario(1, x);  %cria um array de uma coluna para cada experiencia
      for j = x +1:n;
          resultado2=  temporario(1, j) ;    %compara com os resultados seguintes
          if(resultadoDeLancamento == resultado2);
              contador = contador + 1 ;
          break %jump
         endif
      endfor
  endfor
endfor

Probabilidade = 1-(contador/( N * 20))