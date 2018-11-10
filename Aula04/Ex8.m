clear; 
clc;
close;


N=10^4;
[X,Y]=BoxMuller(N);
hist(X,50)
title(['N=' num2str(N)]);
ax=axis;
ax(1)=-5; ax(2)=5;
axis(ax)
