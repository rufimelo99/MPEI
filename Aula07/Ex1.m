clear;
clc;
close;

tic, 

% C´odigo base para gui˜ao PL07 MPEI 2018-2019
udata=load('u.data'); % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;
% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu= length(users); % N´umero de utilizadores
% Constr´oi a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa c´elulas
for n = 1:Nu, % Para cada utilizador
  % Obt´em os filmes de cada um
  ind = find(u(:,1) == users(n));
  % E guarda num array. Usa c´elulas porque utilizador tem um n´umero
  % diferente de filmes. Se fossem iguais podia ser um array
  Set{n} = [Set{n} u(ind,2)];
end
%% Calcula a distˆancia de Jaccard entre todos os pares pela definic¸˜ao.
J=zeros(Nu); % array para guardar distˆancias
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
%% Com base na distˆancia, determina pares com
%% distˆancia inferior a um limiar pr´e-definido
threshold =0.4; % limiar de decis˜ao
% Array para guardar pares similares (user1, user2, distˆancia)
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
fprintf('Número de pares similares: %d\n', threshold, N_similares) 
fprintf('\nPair \t\tJaccard Distance\n')
for n = 1 : N_similares
    fprintf('%d\t%d\t%f\n', SimilarUsers(n, 1), SimilarUsers(n,2), SimilarUsers(n,3));
end
,toc