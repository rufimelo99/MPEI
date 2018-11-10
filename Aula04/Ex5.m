clear;
clc;
close;

figure;

xi = [1, 2, 3, 4, 5, 6];
pxi = [0.1,0.1,0.1,0.1,0.1,0.5];
N = 10;
fmp(xi, pxi, N);

%hist(fmp(xi, pxi, N));

