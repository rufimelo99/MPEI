Ta = 1;
t = [0 : Ta : 10]';
plot(t, hashFunction(t, 100))
ylabel("Probabilidade");
xlabel("keys");


%-------------------erro-------------------