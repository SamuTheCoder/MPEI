N = 10000;
p = 0.5;
n = 20;

for k = 0: 20
    probability(k+1) = prob(p,n,N,k);
end

stem(0:20, probability);