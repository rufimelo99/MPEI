function [SimilarUsers] = ser_similar(Set, users, J, threshold)

Nu=length(Set);
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu,
  for n2= n1+1:Nu,
    if J(n1, n2)<threshold
      SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)];
      k= k+1;
    end
  end
end
N_similares = length(SimilarUsers)-1;
fprintf('Numero de pares similares: %d\n', N_similares) 
fprintf('\nPair \t\tJaccard Distance\n')
for n = 1 : N_similares
    fprintf('%d\t%d\t%f\n', SimilarUsers(n, 1), SimilarUsers(n,2), SimilarUsers(n,3));
end
endfunction