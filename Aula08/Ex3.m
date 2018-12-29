clear;
clc;
close;

%3.a)
fprintf("3.a)\n")

T = rand(20, 20);
for i=1:20
    T(:, i) = T(:, i) / sum(T(:, i));
    %T(n, i) correponde à fração daquele valor na coluna
end

arr = zeros(20,1);
arr(1)=1;
After20 = T^20 * arr;
fprintf("20 transicoes: %d\n", After20(20));
After40 = T^40 * arr;
fprintf("20 transicoes: %d\n", After40(20));
After100 = T^100 * arr;
fprintf("20 transicoes: %d\n", After100(20)); 