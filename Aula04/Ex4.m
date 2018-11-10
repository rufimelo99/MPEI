clear;
clc;
close;

N=1e4;
n=20;
p=0.3;

X = DistribuicaoBinomial(n,p, N);
hist(X);

