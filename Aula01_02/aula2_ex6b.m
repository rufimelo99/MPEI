clear;
clc;
close;

N= 1e4; %numero de experiencias
pm = 70 ; %numero de pessoas


Para_Comparar = [];
mesma_data = 0;

for n = 1 : pm
  aniversarios = randi(365,n,N);
  
    for coluna = 1: N
        for c = 1 : n
            if any (Para_Comparar == aniversarios(c, coluna))
               mesma_data += 1 ;
               Para_Comparar = [];
                break
            end
            Para_Comparar = [Para_Comparar, aniversarios(c, coluna)] ;
           % aniversarios(c,coluna); %controlo
 
      endfor
    end
    
    prob = mesma_data/N
    mesma_data = 0;

    if (prob >= 0.9)
      printf("o numero minimo de pessoas �: ")
      n
      break
    end     
end
