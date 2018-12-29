clear;
clc;
close;

%1.a)
fprintf("1.a)\n")
%0.8*0.7 + 0.2*0.8
T=[0.7, 0.8; %nao faltar
   0.3, 0.2];  %faltar
   
E=[0.7*0.7+0.3*0.8; %ir
   0.7*0.3+0.3*0.2]; %nao ir
   
   
%R:0.7*0.7+0.3*0.8
fprintf("A probabilidade é: %d\n", 0.7*0.7+0.3*0.8)
%1.b)
fprintf("1.b)\n")
T=[0.7, 0.8;  %nao faltar
   0.3, 0.2];  %faltar
   
E=[0.8*0.7+0.2*0.8; %ir
   0.8*0.3+0.2*0.2]; %nao ir
   
   
%R:0.8*0.7+0.2*0.8
fprintf("A probabilidade é: %d\n", 0.8*0.7+0.2*0.8)   
%1.c)
fprintf("1.c)\n")
A=T^30*[1;0];


fprintf("A probabilidade é: %d\n", A(1,1))   

%1.d)
fprintf("1.d)\n")
T=[0.7, 0.8;   %nao faltar
   0.3, 0.2];  %faltar
   
E=[0.7*0.7+0.3*0.8; %ir
   0.7*0.3+0.3*0.2]; %nao ir
   
T=T^(30)*[0.85; 0.15]


