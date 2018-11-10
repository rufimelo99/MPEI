function [y] = probabilidade_por_simulacao_sabendoQue(p,k,n, N, l)
%N %n´umero de experiencias
%p probabilidade de nascer rapaz
%k n´umero de filhos rapazes
%n %n´umero de filhos

p1 = probabilidade_por_simulacao_peloMenos(p,k,n, N) %ter pelo menosum filho

k=k + l;
p2 = probabilidade_por_simulacao(p,k,n, N) %ter dois filhos

p2/(p1)
endfunction   