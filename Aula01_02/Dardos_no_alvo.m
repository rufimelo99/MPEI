function [y] = Dardos_no_alvo(p,m,n, N)
  %N n´umero de experiˆencias
  %p ; %probabilidade de ter acertar no alvo especifico
  %m ; %umero de alvos
  %n ; %n´umero de dardos
  
  
  
  contadorFinal = 0;
  contador = 0;

  r = randi(100,N, n);

  for t=1:N
    temporario = r(t,:);
    
    for x = 1:n ;
      resultadoDeLancamento =  temporario(1, x);  %cria um array de uma coluna para cada experiencia

        for j = x +1:n;
            resultado2=  temporario(1, j) ;    %compara com os resultados seguintes
          if(resultadoDeLancamento == resultado2);
              contador = contador + 1 ;
          endif
          if(contador > 1)
                contadorFinal = contadorFinal +1 ;
          endif
        endfor
        
          contador = 0;
    endfor
  endfor

  Probabilidade = contadorFinal/( N * 20)
endfunction  