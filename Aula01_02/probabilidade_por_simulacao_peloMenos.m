function [y] = probabilidade_por_simulacao_peloMenos(p,k,n, N)
  
%% C´odigo 2 - segunda vers˜ao
%N %n´umero de experiˆencias
%p probabilidade de cara
%k n´umero de caras
%n %n´umero de lanc¸amentos
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos)>= k;
y = sum(sucessos)/N;
endfunction   