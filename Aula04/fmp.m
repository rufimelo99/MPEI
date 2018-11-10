function y = fmp(xi, pX, N)
  x = cumsum(pX);
  valores_aleatorios = rand(1, N);
  y = zeros(1, N);

  for u=1:length(valores_aleatorios)
    for m=1: length(pX)%printf("Valor da probabilidade acima - x(m): %d\n",  x(m))
    %printf("Valor correspondente - xi(m): %d\n",  xi(m))
    
      if( valores_aleatorios(u) < x(m) && valores_aleatorios(u) > x(m-1))
        printf("Valor gerado aleatoriamente: %d\n",  valores_aleatorios(u))
        printf("Valor da probabilidade acima - x(m): %d\n",  x(m))
        printf("Valor correspondente - xi(m): %d\n",  xi(m))
    
        y(u)= xi(m);
        endif
     endfor
  endfor
  y;
%{ 
  yi = zeros(1, length(xi));

  for u=1:length(y)
    for m=1: length(xi)
      if(y(u) == xi(m))
        yi(m)++;      
      endif
      endfor
  
  endfor
%}

  hist(y, pxi)
  
  
endfunction