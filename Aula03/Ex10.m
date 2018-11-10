clear;
clc;
close;

X = [0,1,2,3,4,5,6,7,8,9,10];

N = 20;
matriz = randi(11,1 , N)-1  ;

menor3 = sum(matriz < 3);
maior7 = sum(matriz > 7);
maior1Menor6 = sum(matriz > 1 & matriz <6);

p3 = menor3/N;
p7 = maior7/N;
p1_6 = maior1Menor6/N;
fprintf('P(X < 3) = %d\n', p3);
fprintf('P(X > 7) = %d\n', p7);
fprintf('P(1< X < 6) = %d\n', p1_6);