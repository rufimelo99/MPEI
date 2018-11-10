N = 1000; %n´umero de experiˆencias
p = 1/100; %probabilidade de ter acertar no alvo especifico
m = 100; %umero de alvos
n = 20; %n´umero de dardos

%Dardos_no_alvo(p,m,n, N)


%% criar array de prob, tudo preenchido com zeros
p = zeros(1, 4)
p(1) = Dardos_no_alvo(p,m,n, N)
p(2) = Dardos_no_alvo(p,(m*10),n, N)
p(3) = Dardos_no_alvo(p,(m*100),n, N)
p(4) = Dardos_no_alvo(p,(m*1000),n, N)



stem(0:4, p);

%***********************************ERRO********************************