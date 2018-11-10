function y = CriarChave()
 % Nmin = 3;
  %Nmax = 20;
  Alfabeto = ["A":"Z" "a":"z"];

  %length(Alfabeto) %=52
  tamanho = ceil(rand()*17+3); %entre 3 e 20
  aleatorio = ceil(rand(1,tamanho)*52);
  y = Alfabeto(aleatorio);
  %or
  %aleatorio = floor(rand()*52)

endfunction