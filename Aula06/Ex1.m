clear;
clc;
close;
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave
debug = 0;

printf("Ex1")


[dados] = inicializar_BloomFilter(30, 5);
if debug
  printf("Tamanho do BloomFilter: %i\n", length(dados.BloomFilter))
endif

dados = inserir_elemento(dados, "palavra");
dados = inserir_elemento(dados, "ola");
dados = inserir_elemento(dados, "Rui");

if debug
  printf("BloomFilter:\n")
  printf("%i ", dados.BloomFilter)
  printf("\n")

endif

verificar_elemento(dados, "ola");
verificar_elemento(dados, "Andre");