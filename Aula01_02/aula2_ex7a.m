clear;
clc;
close;
%n numero de lancamentos
%N numero de experiencias
%A = "“the total of two rolls is 10"
%B = “at least one roll resulted in 5”
%C =  “at least one roll resulted in 1”

%% i) nao, nao sao
%% ii)  nao, nao sao

%%b) nao

%Evento A
%P(a) = 1/25
N= 100;
n = 2;


resultados = randi(5, N, n);
A_sucesso = 0;
B_sucesso = 0;
C_sucesso = 0;
E_sucesso = 0;
F_sucesso = 0;
AnB_sucesso = 0;
AnC_sucesso = 0;
EnF_sucesso = 0;
for (t=1:N)
  if(resultados(t, 1) + resultados(t, 2) == 10)
    A_sucesso ++;
  end
end


for (t=1:N)
  if(resultados(t, 1) == 5 || resultados(t, 2) == 5 )
    B_sucesso ++;
  end
end
for (t=1:N)
  if(resultados(t, 1) == 1 || resultados(t, 2) == 1 )
    C_sucesso ++;
  end
end
for (t=1:N)
  if(abs( resultados(t, 1) - resultados(t, 2) ) == 1 )
    E_sucesso ++;
  end
end
for (t=1:N)
  if( resultados(t, 1) - resultados(t, 2)  <  0 )
    F_sucesso ++;
  end
end

for (t=1:N)
  if((resultados(t, 1) == 5 || resultados(t, 2) == 5 )&& (resultados(t, 1) + resultados(t, 2) == 10))
    AnB_sucesso ++;
  end
end

for (t=1:N)
  if((resultados(t, 1) == 1 || resultados(t, 2) == 1 )&& (resultados(t, 1) + resultados(t, 2) == 10))
    AnC_sucesso ++;
  end
end
for (t=1:N)
  if((abs( resultados(t, 1) - resultados(t, 2) ) == 1 )&& (( resultados(t, 1) - resultados(t, 2)  <  0 ) == 10))
    EnF_sucesso ++;
  end
end

probA = A_sucesso/N
probB = B_sucesso/N
probC = C_sucesso/N
probE = E_sucesso/N
probF = F_sucesso/N
probAnB = AnB_sucesso/N
probAxB = probA*probB
"como sao diferentes, nao sao independentes"
probAnC = AnC_sucesso/N
probAxC = probA*probC
"como sao diferentes, nao sao independentes"
probEnF = EnF_sucesso/N
probExF = probE*probF

"como sao diferentes, nao sao independentes"
