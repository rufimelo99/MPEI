function y = HashTable_v2(N, a, pmfPT_acumulada, alpha)
  Table = zeros(1, N);
  %n = N*a;
  
  for i=1: N
    m = CriarChave_v2(pmfPT_acumulada, alpha);
    a = mod(DJB31MA(m,11), N)+1;
    Table(1, a) += 1;
  endfor
  %Table
  y = Table;
endfunction