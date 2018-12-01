function [SimilarUsers] = similar_hash(threshold,J,users,n_hash_functions )
  SimilarUsers= zeros(1,3); %user1 user2 similarity
  Nu=length(users);
  threshold=1-threshold;
  k= 1;
  for i=1:Nu
      for j=i+1 : Nu %se igual a 1, vai ser similar com o mesmo user xD
        
          similarity=sum(J(:,i)==J(:,j))/n_hash_functions;
          if similarity>threshold
              SimilarUsers(k,:)= [ceil(users(i)) ceil(users(j)) similarity];
              k= k+1;
          end
      end
  end
end