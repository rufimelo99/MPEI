function y = HashTable(N, a)
  Table = zeros(1, N);
  %n = N*a;
  
  for i=1: N
    m = CriarChave();
    a = mod(DJB31MA(m,11), N)+1;
    Table(1, a) += 1;
  endfor
  %Table
  y = Table;
endfunction