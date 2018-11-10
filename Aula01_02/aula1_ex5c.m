

N=1e6; 
pr = 0.3;
NL = 5;

p = zeros(1, NL+1); 

for k=0:NL;
  p(k+1) = probabilidade_por_simulacao(pr,k,NL, N);
  fprintf(1,'%d com defeito em  %d pecas = %4f\n', k, NL, p(k+1));
  

endfor


stem(0:NL, p);


%hist????
%bar? x 0:5  Y p

bar(0:5, p)