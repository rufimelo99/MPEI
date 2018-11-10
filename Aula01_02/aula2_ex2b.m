N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de nacer filho
k = 10; %umero de casos positivos seguidos
n = 11; %n´umero de filhos(tamanhao familia)
l = 1; %calcula a probabilidade de ter + quantos filhos

existe = 0;
existeaSequencia = 0;

caras = rand(n,N) > p ;

lancamento1 = caras(1,:);
lancamento2 = caras(2,:);
lancamento3 = caras(3,:);
lancamento4 = caras(4,:);
lancamento5 = caras(5,:);
lancamento6 = caras(6,:);
lancamento7 = caras(7,:);
lancamento8 = caras(8,:);
lancamento9 = caras(9,:);
lancamento10 = caras(10,:);
lancamento11 = caras(11,:);
casosAcontar = lancamento1 + lancamento2 + lancamento3 + lancamento4 +lancamento5 +lancamento6 +lancamento7 +lancamento8 + lancamento9+ lancamento10;
casosFavoraveis = lancamento1 + lancamento2 + lancamento3 + lancamento4 +lancamento5 +lancamento6 +lancamento7 +lancamento8 + lancamento9+ lancamento10+ lancamento11; 

for t=1:N
  if(casosFavoraveis(t)>10)
    existe = existe + 1;
   endif
endfor

for t=1:N
  if(casosAcontar(t)==10)
    existeaSequencia = existeaSequencia + 1;
   endif
endfor

%for t=1:N
%  if(primeirofilho(t)>0)
%    existePrimeiroFilho = existePrimeiroFilho + 1;
%   endif
%endfor
existeaSequencia
existe
y = existe/existeaSequencia

 