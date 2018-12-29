clear;
clc;
close;

%5.a)
fprintf("5.a)\n")

%     sol, nuvens, chuva


T =  [0.7 0.2 0.1;
      0.2 0.3 0.5;
      0.1 0.5 0.4]

arr=zeros(3,1);
arr(1)=1;      
%5.b)
fprintf("5.b)\n")
After2=T^2*arr;
printf("Chuva: %d\n",  After2(2))

%5.c) + %5.d)

fprintf("5.c)\n")


dados=zeros(9, 20);
%Temp=T

for u=1:20
  %Temp=T*Temp;
  Temp=T^u;

  if(u > 1 && abs(dados(:, u-1)-dados(:, u))<=0.0001 )
      break;
  endif
  dados(:, u)=Temp(:);
  plot(dados')
  title('5.c')
  grid on
  ylabel('Probabilidades')
  xlabel('Iterações')
  drawnow
end

