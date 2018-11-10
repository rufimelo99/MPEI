clear;
clc;
close;

N = 100;
media = 14;
desvio_padrao = 2;

resultados = randn(1, N)*desvio_padrao + media ;

entre12_16 = sum(resultados > 12 & resultados < 16 ) / N ;
entre10_18 = sum(resultados > 10 & resultados < 18 ) / N ;
passar = sum(resultados > 10) / N;


fprintf('P(12 < X < 16) = %s\n', num2str(entre12_16));
fprintf('P(10 < X < 18) = %s\n', num2str(entre10_18));
fprintf('P(X >= 10) = %s\n', num2str(passar));