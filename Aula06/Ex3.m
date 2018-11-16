clear;
clc;
close;
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave
debug = 0;


printf("Ex3.a)")

[dados] = inicializar_BloomFilter(8000, 3);


alpha = ["0":"9" "a":"z" "A":"Z" ];  
ficheiros={'pg21209.txt','pg26017.txt'};
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



N_palavras_geradas = 1000; 
h = waitbar(0  , 'Adicionando Elementos...');
  
for u=1:N_palavras_geradas

 waitbar(u/N_palavras_geradas);
  
  
  palavra = CriarChave_v2(pmfPT_acumulada, alpha);
  if debug
    %exemplo unico de aplicacao
    printf("(%i)Palavra gerada: %s\n",u, CriarChave_v2(pmfPT_acumulada, alpha))
  endif
  dados = inserir_elemento(dados, palavra);
endfor
close(h);
if debug
  printf("BloomFilter:\n")
  printf("%i ", dados.BloomFilter)
  printf("\n")
endif

stem(dados.BloomFilter)

printf("Ex3.b)")

y = waitbar(0  , 'Verificando Elementos...');
N_palavras_verificar = 10000;
for u=1:N_palavras_verificar
  waitbar(u/N_palavras_verificar);
  counter = 0;
  palavra = CriarChave_v2(pmfPT_acumulada, alpha);
  if debug
    %exemplo unico de aplicacao
    printf("(%i)Palavra gerada: %s\n",u, CriarChave_v2(pmfPT_acumulada, alpha))
  endif
  if (verificar_elemento(dados, palavra) == 1);
    counter++;
  endif
endfor
close(y);