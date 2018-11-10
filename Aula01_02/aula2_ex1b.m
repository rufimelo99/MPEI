N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de nacer filho
k = 1; %n´umero de filhos rapazes
n = 2; %n´umero de filhos

p1 = probabilidade_por_simulacao_peloMenos(p,k,n, N) %ter pelo menosum filho

p2 = probabilidade_por_simulacao(p,k,n, N) %ter um filho

p2/p1

