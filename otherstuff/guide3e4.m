T = [0.4^2 0 0 0.6^2; 0.6^2 0 0 0.6*0.4; 0.4*0.6 0 0 0.6*0.4; 0.4*0.6 1 1 0.4^2];
X0 = [1; 0; 0; 0];

%Xn = T^n * X0

iterations = [5, 10, 100, 200];
res = zeros(4, 4);
for i = 1:4
    Xi = T^iterations(i) * X0;
    res(:,i) = Xi;
end
disp(res)
disp(sum(res))

M = [T - eye(4); ones(1,4)];
x = [zeros(4,1); 1];
c = M\x;

disp(c)