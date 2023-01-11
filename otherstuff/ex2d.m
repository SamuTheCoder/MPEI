n = 100;
m = [200 500 1000 2000 5000 10000 20000 50000 100000]

res = zeros(1,9);

for i = 1:1:9
    res(i) = prob(m(i), n);
end

stem(m, res);
