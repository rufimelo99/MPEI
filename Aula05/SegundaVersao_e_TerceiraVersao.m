clear;
clc;
close;


printf("Segunda Versao e Terceira Versão\n")

%EX 1 


printf("\nEx 1\n")

%retirei o alpha e leitura de ficheiro de dentro da funcao pois demoraria demasiado tempo na alinea a seguir
%se fosse só para gerar uma palavra, usaria dentro da funcao CriarChave_v2
alpha = ['A':'Z' 'a':'z' ];  
%  ficheiros a serem processados (do projecto Gutemberg
ficheiros={'pg21209.txt','pg26017.txt'};

% obter função massa de probabilidade (pmf em Inglês)
pmfPT=pmfLetrasPT(ficheiros,alpha);

[m,q] = size(pmfPT);
pmfPT_acumulada = zeros(m, q);
for u=1:q
  %m = 1 
  if (u == 1)
    pmfPT_acumulada(m,u) = pmfPT(m, u);

  else
  pmfPT_acumulada(m,u) = pmfPT_acumulada(m,u-1)+pmfPT(m, u); 
  endif
endfor
%pmfPT_acumulada;





printf("Palavra gerada: %s", CriarChave_v2(pmfPT_acumulada, alpha))
%EX 2
printf("\nEx 2\n")
printf("(Observar Graficos/Histogramas)\n")
printf("A desenhar...\n")

N = 1000;
a = 0.8;
y = HashTable_v2(N, a, pmfPT_acumulada, alpha);
subplot(1,2,1)
hist(y, [0,1,2,3,4,5,6,7,8])


subplot(1,2,2)
bar(1:N, y)
ylim([0 10])
xlim([0 N])

probabilidade0 = 0;
probabilidade1 = 0;
probabilidade2 = 0;
probabilidade3 = 0;
probabilidade4 = 0;
probabilidade5 = 0;
probabilidade6 = 0;
probabilidade7 = 0;

for u=1:N
  %y(1,u);
  if(y(1,u)== 0)
    probabilidade0 += 1;
  endif
  if(y(1,u)== 1)
    probabilidade1 += 1;
  
  endif
  if(y(1,u)== 2)
    probabilidade2 += 1;
  
  endif
  if(y(1,u)== 3)
    probabilidade3 += 1;
  
  endif
  if(y(1,u)== 4)
    probabilidade4 += 1;
  
  endif
  if(y(1,u)== 5)
    probabilidade5 += 1;
  
  endif
  if(y(1,u)==6)
    probabilidade6 += 1;
  
  endif
  if(y(1,u)== 7)
    probabilidade7 += 1;
  
  endif

endfor

media = 0*probabilidade0/N + 1*probabilidade1/N + 2*probabilidade2/N + 3*probabilidade3/N  + 4*probabilidade4/N + 5*probabilidade5/N + 6*probabilidade6/N  + 7*probabilidade7/N ;


%variancia = E[x`2] - E[x]^2 

variancia =  (1^2)*probabilidade1/N + 2^2*probabilidade2/N + 3^2*probabilidade3/N + 4^2*probabilidade4/N + 5^2*probabilidade5/N + 6^2*probabilidade6/N + 7^2*probabilidade7/N - (media^2);

printf("A media é: %i\n", media)
printf("A variancia é: %i\n", variancia) 