N=1e6; 
pr = 0.5;
NL = 20;

 %% criar array de prob, tudo preenchido com zeros
p = zeros(1, NL+1);
%p(1) = 3;

for k=0:NL;
  p(k+1) = probabilidade_por_simulacao(pr,k,NL, N);
  fprintf(1,'P[%d caras em %d lancamentos]=%4f\n', k, NL, p(k+1));
  

endfor


stem(0:NL, p);

