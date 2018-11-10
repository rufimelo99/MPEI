N= 1e5; %n´umero de experiˆencias
p = 0.9; %probabilidade de ter cancro
k = 1; %umero de casos positivos 
n = 1; %n´umero de exames feitos

mamografiaPositiva = 0;
TemCancroAposExame = 0;

mamografia = rand(n,N) > 1-p ;

p = 0.0001; %probabilidade de ter cancro

ProbPopPortuguesa = rand(n,N) > p ;

cancro = mamografia(1,:) + ProbPopPortuguesa(1,:);

for t=1:N
  if(mamografia(t)>0)
    mamografiaPositiva = mamografiaPositiva + 1;
   endif
endfor

for t=1:N
  if(cancro(t)>1)
    TemCancroAposExame = TemCancroAposExame + 1;
   endif
endfor

mamografiaPositiva
TemCancroAposExame
y = TemCancroAposExame/mamografiaPositiva
