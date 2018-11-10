clear;
clc;
close;

p = 0.3;
N = 10000;

hist(Bernoulli(p, N),(0:1)');
z = hist(Bernoulli(p, N),(0:1)')./10000

fprintf("A probabilidade em funcao de p (p = %i) de  insucesso e sucesso s�o respectivamente: %d , %d \n", p , z);

