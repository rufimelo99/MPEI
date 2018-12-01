function [J] = distancia_jaccard(Set)

Nu=length(Set)
J=zeros(Nu, Nu); % array para guardar distˆancias
h= waitbar(0,'Calculating');
for n1= 1:Nu,
  valueBar =  n1 / Nu;
  waitbar(valueBar,h, sprintf('Calculating...\n%.2f%% done.', valueBar*100));
     
  for n2= n1+1:Nu,
    
    % intersection length
       intersectLength = length(intersect(Set{n1}, Set{n2}));
       
       % union
       unionLength = length(Set{n1}) + length(Set{n2}) - intersectLength;
       
       % Jaccard Distance
       J(n1, n2) = 1 - intersectLength / unionLength;
    
    
  end
end
delete (h)

save ('DistanciaJaccard', 'J')
endfunction