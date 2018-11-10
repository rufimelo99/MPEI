function y = ChainingHashTable(Key, HashCodes)

[N, M] = size(HashCodes);
for i=1:M
  if(Key == HashCodes(i,1))
     HashCodes(i,2) = DJB31MA(Key,11);
     break;
  endif
  elseif(HashCodes(i,1) == 0)
    HashCodes(i,1) = Key;
    HashCodes(i,2) = DJB31MA(Key,11);
    break;
  endif
    
endfor

y = HashCodes;
endfunction