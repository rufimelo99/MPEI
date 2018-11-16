function [dados] = inicializar_CountFilter(cells, n_hashfunctions)
  warning('off', 'Octave:possible-matlab-short-circuit-operator');
  %https://stackoverflow.com/questions/11384359/how-to-suppress-warnings-in-gnu-octave

  if (cells <= 0 || n_hashfunctions <= 0)
    printf("Dados Invalidos.\nNumero de celulas e de funcoes de dispersao tem de ser superior a 0\n");
    fprintf('\nDesligando...\n');
    %exit
    
  else  
     fprintf('\nA criar Bloom Filter....\n');
     CountFilter = zeros(1, cells); %0 or 1 (nao ocupado ou ocupado)

     dados = struct("CountFilter", CountFilter, "n_hashfunctions", n_hashfunctions); 
     
  endif
endfunction