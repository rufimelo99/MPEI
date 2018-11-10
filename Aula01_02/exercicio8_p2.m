function [y] = exercicio8_p2(N, n, A)

%N= 1e4;    experiencias
%n = 5;    lancamentos
%A alfabeto
resultados = randi(A,N, n);


contador_12 = 0;
for(j =1 :N)
  for(t=1: n-1)
    if((resultados(j,t) == 1) && (resultados(j, t+1) == 2))
      contador_12++;
      %resultados(j,t);
      %resultados(j,t+1);
     endif
  end
end
prob_12 = (contador_12/N)


contador_1 = 1;
for(t = 1: N)
  for(j = 1: n)
      if(resultados(t, j) == 1)
        contador_1  ++;
        break
      endif
  endfor
end
prob_1 = (contador_1/N)


contador_1u2 = 0;
for(j =1 :N)
  for(t=1: n-1)
    if((resultados(j,t) == 1) || (resultados(j, t) == 2))
      contador_1u2++;
      %resultados(j,t);
      %resultados(j,t+1);
      break
     endif
  end
end
prob_1u2 = (contador_1u2/N)




contador_1n2 = 0;
contador_2 = 0;
contador_1sq2 = 0;
for(j =1 :N)
  for(t=1: n-1)
    if((resultados(j, t) == 2))
      contador_2++;
      %resultados(j,t);
      %resultados(j,t+1);
      break
     endif
  end
end
for(j =1 :N)
  for(t=1: n-1)
    if((resultados(j,t) == 1))
      for(t=1: n-1)
        if((resultados(j,t) == 2))
          contador_1n2++;
          break
        endif
      endfor
      break
     endif
  end
end
contador_1n2;
contador_2;
prob_1sq2 = (contador_1n2/contador_2)


y = prob_1sq2;


endfunction