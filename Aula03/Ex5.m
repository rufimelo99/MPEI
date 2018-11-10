clear; 
clc;
close;

p = logspace(-3,log10(1),100);

probabilidade_desp_2m = zeros(1,100);

for u=1:100
  prob = p(1,u);
  probabilidade_desp_2m(1,u)= variavel_binomial(2,2,prob);
end
probabilidade_desp_4m = zeros(1,100);

for u=1:100
  prob = p(1,u);
  probabilidade_desp_4m(1,u)= variavel_binomial(4,3,prob) + variavel_binomial(4,4,prob);
end

plot(p,probabilidade_desp_2m)
hold on;

plot(p,probabilidade_desp_4m)
hold off;

xlabel('probabilidade de motor falhar');
ylabel('probabilidade de despenhar');
legend('2 motores', '4 motores');

fprintf('Pelo grafico, e preferivel voar num aviao com 2 motores\n')