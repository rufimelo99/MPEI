clear;
clc;
close;
%7.a)
%media 15 p/ s



%a = n*p;
a = 15;
k = 0;
poisson = (((a)^k)/factorial(k))*e^-a ;
fprintf("Poisson: %s\n", num2str(poisson));


%Experimentalmente nao funciona pq a ordem de grandeza é demasiado elevada
N = 1e4;
n = 60;
p = 0.25;
mensagens = rand(n,N) > 1-p;
contador_de_0mensagens=0;
for u = 1: N
contador_mensagens=0;
  for i = 1 : n
    if mensagens(i, u) == 1
      contador_mensagens ++;
     endif
  end
if(contador_mensagens == 0)
  contador_de_0mensagens++
endif
end

prob = contador_de_0mensagens/N

fprintf("(p.s. nao funciona dado a ordem de grandeza)\nExperimentalmente: %s\n", num2str(prob));
%7.b)

%a = n*p;
p = [];
a = 15;
for i = 1:10
    p(i) = (power(15, i)/factorial(i))*power(exp(1),-a);
end
fprintf('P(mais que 10 - Poisson) = %s\n', num2str(1-sum(p)))


N = 1e4;
n = 60;
p = 0.25;
mensagens = rand(n,N) > 1-p;
contador_de_10mensagens=0;
for u = 1: N
contador_mensagens=0;
  for i = 1 : n
    if mensagens(i, u) == 1
      contador_mensagens ++;
     endif
  end
if(contador_mensagens > 10)
  contador_de_10mensagens++;
endif
end

prob = contador_de_10mensagens/N;
fprintf("(p.s. nao funciona dado a ordem de grandeza)\nExperimentalmente: %s\n", num2str(prob));
