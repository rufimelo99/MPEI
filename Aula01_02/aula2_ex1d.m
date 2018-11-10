N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de nacer filho
k = 1; %umero de casos positivos seguidos
n = 2; %n´umero de filhos(tamanhao familia)
l = 1; %calcula a probabilidade de ter + quantos filhos

existe = 0;
existePrimeiroFilho = 0;

nascimentos = rand(n,N) > p ;

primeirofilho = nascimentos(1,:);
segundofilho = nascimentos(2,:);
r = primeirofilho + segundofilho;

for t=1:N
  if(r(t)>1)
    existe = existe + 1;
   endif
endfor

%for t=1:N
%  if(primeirofilho(t)>0)
%    existePrimeiroFilho = existePrimeiroFilho + 1;
%   endif
%endfor

casosTotais = sum(primeirofilho);
existe;
y = existe/casosTotais

 