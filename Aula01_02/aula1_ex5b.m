N=1e5; 
p = 0.3;
k = 2;
n = 5;
n1 = probabilidade_por_simulacao(p,k,n, N)

k = 1;
n2 = probabilidade_por_simulacao(p,k,n, N)

k = 0;
n3 = probabilidade_por_simulacao(p,k,n, N)

total = n1+n2+n3