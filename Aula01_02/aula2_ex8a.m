clear;
clc;
close;

%supondo que:
% 1 = "um"
% 2 = "dois"
% 3 = "tres"

N= 10;
n = 2;
resultados = randi(3, N, n)
contador_12=0;
contador_1u2=0;
contador_1=0;
contador_2=0;
contador_1sq2=0;

Para_Comparar = [1,2];

for(t = 1: N)
  if((resultados(t, 1) == 1) && (resultados(t, 2) == 2))
  contador_12 ++;
  endif
end
for(t = 1: N)
  if((resultados(t, 1) == 1) || (resultados(t, 2) == 1))
  contador_1  ++;
  endif
end

for(t = 1: N)
  if( (any (Para_Comparar == resultados(t, 1)) || (any (Para_Comparar == resultados(t, 2) ))))
  contador_1u2++;
  endif
end

for(t = 1: N)
  if((resultados(t, 1) == 2) || (resultados(t, 2) == 2))
    contador_2++;
    if((resultados(t, 1) == 1) || (resultados(t, 2) == 1))
      contador_1sq2  ++;
    endif
  endif
end

prob_12 = contador_12/N
prob_1  = contador_1 /N
prob_1u2 = contador_1u2/N
prob_1sq2 = contador_1sq2/contador_2