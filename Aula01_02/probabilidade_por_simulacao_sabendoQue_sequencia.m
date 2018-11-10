function [y] = probabilidade_por_simulacao_sabendoQue_sequencia(p,k,n, N, l)
%N %n´umero de experiencias
%p probabilidade singular
%k n´umero de casos positivos seguidos
%n %n´umero de casos totais
% l numero de casos extras "+ quantos"
existe = 0;

nascimentos = rand(n,N) > p

primeirofilho = nascimentos(1,:);
segundofilho = nascimentos(2,:);
r = primeirofilho + segundofilho
r(n, N) = primeirofilho(1,:) + segundofilho(1,:)

for t=1:N
  if(r(t)>1)
    existe = existe + 1;
   endif
endfor

sucessos = sum(nascimentos) == k
y = sum(sucessos)/N

endfunction   