function y = CriarChave_v2(pmfPT_acumulada, alpha)
%!!!!!!!segmento dos ficheiros fornecidos!!!!!!!!!



%tamanho = ceil(randn(1, 1000)*5 + 10);
tamanho = 40;
%m media 10 e variancia 5

aleatorio = rand(1, tamanho);
palavra = zeros(1, tamanho);
alpha = ["0":"9" "a":"z" "A":"Z" ];  

[m,q] = size(pmfPT_acumulada);



for i=1: tamanho
  for u=1:q
    %printf("aleatorio(i): %i\n", aleatorio(i)) %numero aleatorio na possicao i do array
    %printf("u: %i\n", u)
    if(aleatorio(i) < pmfPT_acumulada(m,1))
      %printf("Terá de ser A\n")
      palavra(i) = 1;
      %transformar em letra
      break
    elseif(aleatorio(i) >= pmfPT_acumulada(m,q))
    %printf("Terá de ser z\n")
      palavra(i) = 52;
      %transformar em letra
      break
    endif
    if(u != q) 
      %printf("pmfPT_acumulada(m,u+1): %i\n", pmfPT_acumulada(m,u+1))
        
      
      
      if(aleatorio(i) >= pmfPT_acumulada(m,u)) %estava a dar erro com &&
         %printf("pmfPT_acumulada(m,u): %i\n", pmfPT_acumulada(m,u))
     
        if(aleatorio(i) < pmfPT_acumulada(m,u+1))
          %printf("Severia ser este u: %i\n", u)
          palavra(i) = u;
          %transformar em letra
          break
        endif
      endif
      
     endif
  endfor
  
  
  %printf("palavra(i): %i\n", palavra(i))
endfor
%printf("Resultados")
%aleatorio
%palavra
y = alpha(palavra);




endfunction