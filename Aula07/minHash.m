function [J] = minHash(Set, n_hash_functions, Nu)
  
  J=zeros(n_hash_functions, Nu);
  primo=983;
  a=randi([1,primo],1,n_hash_functions);
  b=randi([1,primo],1,n_hash_functions);
  
  %h= waitbar(0,'Calculating');
  for n1= 1:Nu,
    %valueBar =  n1 / Nu;
    %waitbar(valueBar,h, sprintf('Calculating...\n%.2f%% done.', valueBar*100));
    
    array=Set{n1}; %filmes de cada user
    
    for h=1:n_hash_functions
      min=mod((a(h)*array(1)+b(h)),primo);
      
      for k=2:length(array)
            temp=mod((a(h)*array(k)+b(h)),primo);
            
            if temp<min
              min=temp;
            end

        
      end
      J(h,n1)=min;
      
    end 
     
  end
 
  %delete (h)

endfunction