clear;
clc;
close;

figure

xi = [1,2,3,4,5,6];

pxi=ones(1,6)/6;
subplot(1,2,1);
stem(xi,pxi);
title("Ex 1.a");
xlabel('x');
ylabel('px(x)');




xi = [1,2,3,4,5,6];

pxi=zeros(1,6)
prob = 0;
for u=1:6
  if(u ==1)
    pxi(1,u)=1/6;
  else
    pxi(1,u) = pxi(1,u-1) + 1/6;
  endif
  prob = prob + pxi(1,u);
endfor
pxi

subplot(1,2,2)
stairs(xi,pxi);

title("Ex 1.b");
xlabel('x');
ylabel('px(x)');

