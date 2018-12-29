clear;
clc;
close;

Hij=[0.8, 0.1,  0.05;
     0.2, 0.6,  0.2 ;
     0  , 0.3,  0.75]

%Ana 100
%Bernardo 200
%Catarina 30

%7.a)
fprintf("7.a)\n")
%Dia 4 de Janeiro--->3 iteracoes

Dia4=Hij^3*[100, 200, 30]';

fprintf("As 12h do dia 4 de Janeiro, a Ana tinha %d euros\n", Dia4(1))
fprintf("As 12h do dia 4 de Janeiro, o Bernardo tinha %d euros\n", Dia4(2))
fprintf("As 12h do dia 4 de Janeiro, a Catarina tinha %d euros\n", Dia4(3))


%7.b)
fprintf("7.b)\n")

M2016=Hij^365*[100, 200, 30]';

fprintf("Logo depois da passagem de ano para o ano de 2016, a Ana tinha %d euros\n", M2016(1))
fprintf("Logo depois da passagem de ano para o ano de 2016, o Bernardo tinha %d euros\n", M2016(2))
fprintf("Logo depois da passagem de ano para o ano de 2016, a Catarina tinha %d euros\n", M2016(3))

%7.c)
fprintf("7.c)\n")

i=3; %sei que aqui ainda nao atingiu os 130 euros
Plus130=Hij^i*[100, 200, 30]';

while Plus130(3) < 130
  i++;
  Plus130=Hij^i*[100, 200, 30]';
  
  
endwhile
dias=i+1;

mes = {'Janeiro', 'Fevereiro', 'Marco', 'Abril', 'Maio', 'Junho', 'Julho','Agosto', 'Setembro', 'Outubro', 'Novembro', 'Decembro'};
TamanhoMes = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

DiasAno = cumsum(TamanhoMes);
MesID = find(dias < DiasAno, 1);
if(MesID > 1)
  DiasRestantes=dias-TamanhoMes(MesID-1);
  fprintf("O dia em que a Catarina passa a ter mais de 130 euros: %i de %s\n", DiasRestantes, mes{MesID})
else
  DiasRestantes=dias;
  fprintf("O dia em que a Catarina passa a ter mais de 130 euros: %i de %s\n", DiasRestantes, mes{1})
endif
