function [y] = probabilidade_por_simulacao_peloMenos_sabendoQue(p,k,n, N, l)
%N %n´umero de experiencias
%p probabilidade de nascer rapaz
%k n´umero de filhos rapazes
%n %n´umero de filhos

p1 = probabilidade_por_simulacao_peloMenos(p,k,n, N) %ter pelo menos k filhos  

t = k + l;
p2 = probabilidade_por_simulacao_peloMenos(p,t,n, N) %ter pleo menos k+l filhos

y = p2/(p1)
endfunction   