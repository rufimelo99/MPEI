function y = DistribuicaoBinomial(n,p, N)


Bern=rand(n,N)<= p; % n Bernoulli(p)
y=sum(Bern);



endfunction