%n numero de pessoas
n = 5;

%N numero de experiencias
N = 3;

%pf probabilidade final > 0.5
%Probabilidade singular
ps = 1/365;


for n=1: 365
  existe = 0;
  r = randi(365,N, n);  %primeiro valor tem de ser 365

  for linha=1:N
    linha;  %controlo
    for coluna=1:n
      coluna; %controlo
      for elemento_a_seguir = coluna+1 :n
        elemento_a_seguir; %controlo
        if(r(N,elemento_a_seguir) == r(N, coluna))
        r(N,elemento_a_seguir); %controlo
        r(N,coluna); %controlo
        existe = existe + 1;
        endif
      endfor
    endfor
  endfor


  existe; %controlo
  n; %controlo
  N; %controlo
  probabilidade_obtida = existe/(n*N);
  if(probabilidade_obtida > 0.5)
    printf("O numero de pessoas é: ")
    n
    break
  endif
endfor
