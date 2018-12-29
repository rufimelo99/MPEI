clear;
clc;
close;

%4.a)
fprintf("4.a)\n")
p=0.4;
q=0.6;


T=[p^2, (1-p)^2, p*(1-p) , p*(1-p)  ;
   0  , 0      , 0      , (1-q)^2   ;
   0  , 0      , 0      , 1         ;
   q^2, q*(1-q)  , q*(1-q), (1-q)^2 ]
 

arr=zeros(4,1);
arr(1)=1;
%4.b)
fprintf("4.b)\n")

After10=(T^10)*arr;
printf("A: %d\nB: %d\nC: %d\nD: %d\n", After10(1), After10(2), After10(3), After10(4))

