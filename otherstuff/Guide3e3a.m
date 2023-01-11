T = zeros(20);
for i = 1:20
    A= rand(20,1);
    A=A/sum(A);
    T(:,i) = A;
end

disp(sum(T));

%Xn = T^n * X0
X0 = zeros(20,1);
X0(1)= 1;

X2 = T^2 * X0;
X5 = T^5 * X0;
X10 = T^10 * X0;
X100 = T^100 * X0;
disp(X2(20)* 100);
disp(X5(20)* 100);
disp(X10(20) * 100);
disp(X100(20) * 100);