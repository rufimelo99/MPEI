clear;
clc;
close;
tic ();
ficheiro = 'u.data';
[Set, users] = Estrutura(ficheiro);
J = distancia_jaccard(Set);
Similares=ser_similar(Set, users, J, 0.4);

toc;