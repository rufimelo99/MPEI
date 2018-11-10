function y = DJB31MA(key, seed)
  %y = hash('md2', key);
 % y = CriarChave()
  y = uint32(seed);
  for i=1:length(key)
  %     key(i);
    y = mod(31*y + key(i),2e6);
  endfor
endfunction