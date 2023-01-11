Tij = [0.7 0.8
       0.3 0.2];
   
X1 = [0.85 0.15]';
res = zeros(1, 30);
res(1) = 0.15;
for i = 2:30
    X1 = Tij * X1;
    res(i) = X1(2);
end

plot(res, '*-');

