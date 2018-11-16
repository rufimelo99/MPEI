function [y] = k_hashFunctions(key, k)
  debug = 0;
  
  for u=1:k
    key = [key num2str(u)];
    if debug
      printf("%s\n", key);
    endif
  endfor



endfunction