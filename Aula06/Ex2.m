clear;
clc;
close;
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave
debug = 0;


printf("Ex2")

[dados] = inicializar_BloomFilter(3000, 5);


dados = inserir_elemento(dados, "Portugal");
dados = inserir_elemento(dados, "Espanha");
dados = inserir_elemento(dados, "Inglaterra");
dados = inserir_elemento(dados, "Franca");
dados = inserir_elemento(dados, "Alemanha");
dados = inserir_elemento(dados, "Mexico");
dados = inserir_elemento(dados, "Angola");
dados = inserir_elemento(dados, "Antartida");
dados = inserir_elemento(dados, "Somalia");
dados = inserir_elemento(dados, "Belgica");
dados = inserir_elemento(dados, "China");


if (verificar_elemento(dados,  "China") == 1)
  printf("%s esta no Bloom Filter\n", "China")
else
  printf("%s nao esta no Bloom Filter\n", "China")
  
endif
if (verificar_elemento(dados,  "Peru") == 1)
  printf("%s esta no Bloom Filter\n", "Peru")
else
  printf("%s nao esta no Bloom Filter\n", "Peru")
  
endif
if (verificar_elemento(dados,  "Argentina") == 1)
  printf("%s esta no Bloom Filter\n", "Argentina")
else
  printf("%s nao esta no Bloom Filter\n", "Argentina")
  
endif