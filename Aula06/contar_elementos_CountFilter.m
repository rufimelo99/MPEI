function y = contar_elementos_CountFilter(dados, elemento)
warning('off', 'Octave:possible-matlab-short-circuit-operator');
%https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave

  debug = 0;
  key = elemento;
  %fprintf('\nVerificando Elemento....\n');
  counter = 0;
  
  for u=1:dados.n_hashfunctions
    key = [key num2str(u)];
    if debug
      printf("key: %s\n", key);
    endif
    
    posicao = ceil(rem(DJB31MA(key, 3), length(dados.CountFilter)))+1;
    
    if debug
      printf("Posicao: %i\n", posicao);
      printf("O valor da posicao: %i\n", dados.CountFilter(posicao))
    endif

    if(counter==0)
      minimo = dados.CountFilter(posicao);
      counter++;
    endif
    if(dados.CountFilter(posicao)<= minimo)
      
      minimo = dados.CountFilter(posicao);
    
    
    endif

  endfor
  
  y = minimo;
endfunction