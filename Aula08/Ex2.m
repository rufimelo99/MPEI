clear;
clc;
close;

%2.a)
fprintf("2.a)\n")

T=[1/3, 1/4, 0;
   1/3, 11/20, 1/2;
   1/3, 1/5, 1/2]
 
%2.b)
fprintf("2.b)\n")

E0=[60;15;15]


%2.c)
fprintf("2.c)\n")

After30=(T^30)*E0;
printf("A: %i\nB: %i\nC: %i\n", round(After30(1)), round(After30(2)), round(After30(3)))
%2.d)
fprintf("2.d)\n")

E0=[30;
   30;
   30];

%(T^30);
After30=(T^30)*E0;
printf("A: %i\nB: %i\nC: %i\n", round(After30(1)), round(After30(2)), round(After30(3)))

