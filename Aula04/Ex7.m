clear; 
clc;
close;

subplot(1,2,1)
hist(BoxMuller(30).+14, 20);


#Exemplo 
#
#for i=1:6
#subplot(2,3,i)
#N=10^i;
#[X,Y]=BoxMuller(N);
#hist(X,50)
#title(['N=' num2str(N)]);
#ax=axis;
#ax(1)=-5; ax(2)=5;
#axis(ax)
#end
variancia = 2;
media = 14
Y = sqrt(variancia) * randn(1, 1e4)+media;
subplot(1,2,2)
hist(Y,50)
