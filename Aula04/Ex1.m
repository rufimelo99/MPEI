clear;
clc;
close;

%Ex 1.a)
%lcg (X0,a,c,m,N)
X = lcg(7,8, 1, 17, 1000);
Y = unique(X)

subplot(1,3,1)
hist(X, Y)
title('Ex 1.a)')
xlabel('Números')
ylabel('Quantidade')
ylim([0 200])


%Ex 1.b)
X = lcg(7,8, 1, 17, 1000)./ 17;
Y = unique(X)

subplot(1,3,2)
hist(X, Y)
title('Ex 1.b)')
xlabel('Números')
ylabel('Quantidade')
ylim([0 200])


%Ex 1.c)
X = lcg(7,13e13, 1, 2e59, 1000);
Y = unique(X)

subplot(1,3,3)
hist(X, Y)
title('Ex 1.c)')
xlabel('Números')
ylabel('Quantidade')
ylim([0 200])
%-------------------------
%-------------------------
%-------------------------ERRO!!!!!!!!
%-------------------------
%-------------------------