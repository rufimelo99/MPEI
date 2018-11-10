clear;
clc;
close;


N= 10; %numero de experiencias
p = 1/100; %probabilidade de atingir o mesmo alvo
k = 1; %numero de caras
n = 20; %numero de dardos


lancamentos = randi(100,20,N);

contem = [];
alvos_repetidos = 0;

for c = 1:N
  for l = 1:(n-1)
   contem = [contem, lancamentos(l,c)];
   if any (contem == lancamentos(l+1,c))
     alvos_repetidos += 1 ;
     contem = [];
     break
     %lancamentos(l+1,1)
   end
  end
end

prob = (alvos_repetidos)/N
