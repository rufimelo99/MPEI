function [y] = variavel_binomial(n,k, p) 
y = nchoosek(n,k)*p^k*(1-p)^(n-k);
endfunction