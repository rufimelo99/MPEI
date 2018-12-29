clear;
clc;
close;

%6.a)
fprintf("6.a)\n")

Hij=[0.8, 0   ,  0.3,  0;
     0.2, 0.9 ,  0.2,  0;
     0  , 0.1 ,  0.4,  0;
     0  , 0   ,  0.1,  1]
     
%6.b)
fprintf("6.a)\n")
arr = zeros(4,1);
arr(1)=1;

after1000=Hij^1000*arr;
printf("Probabilidade de estarna pagina 2: %d\n", after1000(2));

%6.c)
fprintf("6.c)\n")
after1=Hij^1*arr;
after2=Hij^2*arr;
after10=Hij^10*arr;
after100=Hij^100*arr;
printf("Probabilidade apos 1 passo\n");
printf("1: %d\n", after1(1));
printf("2: %d\n", after1(2));
printf("3: %d\n", after1(3));
printf("4: %d\n", after1(4));
printf("Probabilidade apos 2 passos\n");
printf("1: %d\n", after2(1));
printf("2: %d\n", after2(2));
printf("3: %d\n", after2(3));
printf("4: %d\n", after2(4));
printf("Probabilidade apos 10 passos\n");
printf("1: %d\n", after10(1));
printf("2: %d\n", after10(2));
printf("3: %d\n", after10(3));
printf("4: %d\n", after10(4));
printf("Probabilidade apos 100 passos\n");
printf("1: %d\n", after100(1));
printf("2: %d\n", after100(2));
printf("3: %d\n", after100(3));
printf("4: %d\n", after100(4));

%6.d)
fprintf("6.d)\n")
% OBTER T na forma canónica
% Obter Q
%submatriz de 3x3

Q=Hij(1:3,1:3)
%6.e)
fprintf("6.e)\n")


%% F
%aux= eye(size(Q)) - Q
%F=inv(aux)
%eye(size(Q)) ---> matriz identidade
aux= eye(size(Q)) - Q;
F=inv(aux)

%6.f)
fprintf("6.f)\n")
%t=F' * ones(3,1) % ou sum(F)
MediaTempos=sum(F);

fprintf("numero de passos necessarios para atingir a pagina 4 comecando na pagina 1: %i\n", MediaTempos(1,1));
fprintf("numero de passos necessarios para atingir a pagina 4 comecando na pagina 2: %i\n", MediaTempos(1,2));
fprintf("numero de passos necessarios para atingir a pagina 4 comecando na pagina 3: %i\n", MediaTempos(1,3));


%6.g)
fprintf("6.g)\n")


fprintf("o tempo ate´ a absorcao equivale ao numero de passos necessarios para atingir a pagina 4 comecando na pagina 1: %i\n", MediaTempos(1,1));
fprintf("o tempo ate´ a absorcao equivale ao numero de passos necessarios para atingir a pagina 4 comecando na pagina 2: %i\n", MediaTempos(1,2));
fprintf("o tempo ate´ a absorcao equivale ao numero de passos necessarios para atingir a pagina 4 comecando na pagina 3: %i\n", MediaTempos(1,3));

%6.h)
fprintf("6.h)\n")

Hij=[0.8, 0   ,  0.3,  0;
     0.2, 0.9 ,  0.2,  0;
     0  , 0.1 ,  0.49,  0;
     0  , 0   ,  0.01,  1];
Q=Hij(1:3,1:3);
aux= eye(size(Q)) - Q;
F=inv(aux);
MediaTempos=sum(F);
fprintf("o tempo ate´ a absorcao equivale ao numero de passos necessarios para atingir a pagina 4 comecando na pagina 1: %i\n", MediaTempos(1,1));
fprintf("o tempo ate´ a absorcao equivale ao numero de passos necessarios para atingir a pagina 4 comecando na pagina 2: %i\n", MediaTempos(1,2));
fprintf("o tempo ate´ a absorcao equivale ao numero de passos necessarios para atingir a pagina 4 comecando na pagina 3: %i\n", MediaTempos(1,3));
     