clear;
clc;
close;
figure;
%Considere uma caixa contendo 90 notas de 5 Euros, 9 notas de 50 e 1 de 100:


%1.a)
fprintf('Ex1.a) Espaço de amostragem da experiencia aleatoria = {1:100}\n')
fprintf('A probabilidade de cada elemento aleatório é 1/100');


%1.b)
fprintf('Ex1.b) Espaço de amostragem da experiencia aleatoria = {5,50,100}\n')
fprintf('P(5) = %s\n', num2str(90/100))
fprintf('P(50) = %s\n', num2str(9/100))
fprintf('P(100) = %s\n', num2str(1/100))

%Probabilidade de retirar uma nota x corresponde ao numero de casos favoraveis a dividir pelo numero de casos totais
%ou seja,

n_5euros = 90;
n_50euros = 9;
n_100euros = 1;
n_total = n_5euros+ n_50euros +n_100euros;

Proba_retirar_5euros = n_5euros/n_total;
Proba_retirar_50euros = n_50euros/n_total ;
Proba_retirar_100euros = n_100euros/n_total ;


%Espaco de Amostragem
X = [5,50,100]

prob = zeros(1,3);
prob(1,1) = Proba_retirar_5euros;
prob(1,2) = Proba_retirar_50euros;
prob(1,3) = Proba_retirar_100euros;

stem(X,prob)
title("Ex 2.b")