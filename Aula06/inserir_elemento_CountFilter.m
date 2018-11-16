function y = inserir_elemento_CountFilter(dados, elemento)
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
    posicao = ceil(rem(DJB31MA(key, 3), length(dados.CountFilter)))+1;
    if debug
      printf("Posicao: %i\n", posicao);
      printf("(Antes)O valor da posicao: %i\n", dados.CountFilter(posicao))
    endif
    dados.CountFilter(posicao)=dados.CountFilter(posicao)+1 ; %aumenta 1
    if debug
      printf("(Depois)O valor da posicao: %i\n", dados.CountFilter(posicao))
    endif
    

  endfor


  y = dados;
endfunction