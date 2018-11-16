function y = verificar_elemento(dados, elemento)
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave

  debug = 0;
  key = elemento;
  %fprintf('\nVerificando Elemento....\n');
  counter = 0;

  
  for u=1:dados.n_hashfunctions
    key = [key num2str(u)];
    if debug
      printf("%s\n", key);
    endif
    posicao = ceil(rem(DJB31MA(key, 3), length(dados.BloomFilter)))+1;
    if debug
      printf("Posicao: %i\n", posicao);
      printf("O valor da posicao: %i\n", dados.BloomFilter(posicao))
    endif
    if (dados.BloomFilter(posicao) == 1)
      if debug
        printf("Posicao ok\n");
      endif
      counter++;
    endif
    

  endfor
  
  if(counter != dados.n_hashfunctions)
    if debug
      printf("O elemento(%s) nao existe\n", elemento);
    endif
    (y = 0);
  elseif
    (y = 1);
    if debug
      printf("O elemento(%s) provavelmente existe\n", elemento);
    endif
  endif
endfunction