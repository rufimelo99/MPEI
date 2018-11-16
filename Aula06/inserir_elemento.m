function y = inserir_elemento(dados, elemento)
  warning('off', 'Octave:possible-matlab-short-circuit-operator');
  %https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave

  debug = 0;
  key = elemento;
  %fprintf('\nAdicionando Elemento....\n');
  
  for u=1:dados.n_hashfunctions
    %waitbar_lerficheiros = waitbar(0, sprintf('Procedendo a leitura dos ficheiros=%d...', length(ficheiros)));
    %https://octave.sourceforge.io/octave/function/waitbar.html
     
     
    key = [key num2str(u)];
    if debug
      printf("%s\n", key);
    endif
    posicao = ceil(rem(DJB31MA(key, 3), length(dados.BloomFilter)))+1;
    if debug
    printf("Posicao: %i\n", posicao);
    printf("(Antes)O valor da posicao: %i\n", dados.BloomFilter(posicao))
    endif
    dados.BloomFilter(posicao) = 1 ; %fica ou continua 1
    if debug
    printf("(Depois)O valor da posicao: %i\n", dados.BloomFilter(posicao))
    endif
    

  endfor


  y = dados;
endfunction