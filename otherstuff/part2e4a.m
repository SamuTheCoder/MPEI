N = 1e5;
n = 5;

exp = rand(n, N) < 0.3;
fmp = zeros(1,n+1);
xi = [0 1 2 3 4 5];
defeitos = sum(exp);
for i = 0:1:5
    fmp(i+1) = sum(defeitos == i)/N;
end
probaiii = sum(defeitos <= 2);
stem(xi, fmp);

Fx = cumsum(fmp);

disp(probaiii)
stairs(xi,Fx);

