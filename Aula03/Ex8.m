clear;
clc;
close;

%f(x) = (x+5)/30
N = 1e5;
var = randi(4, 1,N);

X=[1,2,3,4];
contador1 = 0;
contador2 = 0;
contador3 = 0;
contador4 = 0;

for n=1:N
if (var(1,n)==1)
  contador1++;
elseif (var(1,n)==2)
  contador2++;
elseif (var(1,n)==3)
  contador3++;
elseif (var(1,n)==4)
  contador4++;
endif
end
prob = zeros(1,4);
prob1 = contador1/N;
prob2 = contador2/N;
prob3 = contador3/N;
prob4 = contador4/N;

prob(1,1) = prob1;
prob(1,2) = prob2;
prob(1,3) = prob3;
prob(1,4) = prob4;

subplot(1,2,1)
bar(X,prob, 'hist', 'r');

y = (X+5)/30;

subplot(1,2,2)
bar(X,y, 'hist','FaceColor',[0,0.7,0.1]);


fprintf("nao funciona!!!! \n");