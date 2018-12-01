clear;
clc;
close;

tic, 
ficheiro = 'u.data';
[Set, users] = Estrutura(ficheiro);
threshold=0.4; %limiar
n_hash_functions=15;
Nu=length(users);


J=minHash(Set, n_hash_functions, Nu);
[SimilarUsers] = similar_hash(threshold,J,users,n_hash_functions);
fprintf("%s\t%s\t%s\n","User1", "User2","Similarity");

for i=1:length(SimilarUsers)
  fprintf("%i\t%i\t%d\n",SimilarUsers(i,1), SimilarUsers(i,2), SimilarUsers(i,3));
end
toc;