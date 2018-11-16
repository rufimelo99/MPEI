clear;
clc;
close;
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave
debug = 0;
funcoes_k_dispersao=5;
relacao_dispersao_falsospositivos = zeros(1, funcoes_k_dispersao);


printf("Ex4)\n")
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





for u = 1:funcoes_k_dispersao
  [dados] = inicializar_BloomFilter(8000, funcoes_k_dispersao);

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

  

  y = waitbar(0  , 'Verificando Elementos...');
  N_palavras_verificar = 10000;
  counter = 0;
  for u=1:N_palavras_verificar
    waitbar(u/N_palavras_verificar);
    
    palavra = CriarChave_v2(pmfPT_acumulada, alpha);
    if debug
      %exemplo unico de aplicacao
      printf("(%i)Palavra gerada: %s\n",u, CriarChave_v2(pmfPT_acumulada, alpha))
    endif
    if (verificar_elemento(dados, palavra) == 1);
      counter++;
    endif
  endfor
  if debug
    printf("Das Strings aleatorias do segundo conjunto, existiu %i que provavelmente existiam no Bloom Filter", counter)
  endif
  relacao_dispersao_falsospositivos(1, funcoes_k_dispersao)= counter;
  close(y);
endfor


subplot(1,2,1)
relacao_dispersao_falsospositivos

stem(relacao_dispersao_falsospositivos)
n = 8000;
subplot(1,2,2)
relacao_dispersao_falsospositivos_teorica = zeros(1, funcoes_k_dispersao);
m = N_palavras_geradas+ N_palavras_verificar;
for u=1:funcoes_k_dispersao
  k = u;
  prob = (1- (1-1/n)^(k*m))^k ;
  relacao_dispersao_falsospositivos_teorica(1, u) = prob;
endfor
stem(relacao_dispersao_falsospositivos_teorica)