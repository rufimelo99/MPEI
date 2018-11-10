%2. Qual e a probabilidade de obter 6 caras em 15 lanc¸amentos de uma moeda equilibrada? Confronte os ´
%resultados anal´iticos com os resultados de simulac¸ao. ˜

%% C´odigo 2 - segunda vers˜ao
N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de cara
k = 6; %n´umero de caras
n = 15; %n´umero de lanc¸amentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)>=k; %<------
probSimulacao= sum(sucessos)/N
