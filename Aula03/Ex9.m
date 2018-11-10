clear;
clc;
close;


%a = n*p;
a = 1;
k = 0;

poisson = (((a)^k)/factorial(k))*e^-a;

prob = 1- poisson;

fprintf('P(>=1) = %s\n', num2str(prob))