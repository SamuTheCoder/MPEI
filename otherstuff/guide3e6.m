T = [0.8 0 0 0.3 0
     0.2 0.6 0 0.2 0
     0 0.3 1 0 0
     0 0.1 0 0.4 0
     0 0 0 0.1 1];

disp(T)

%gotta have a vector to display the results
res = zeros(1,101);
iterations = zeros(1,101);

res(1) = 0; %it starts on 1
iterations(1) = 1;
S1 = [1 0 0 0 0]';

for i = 2:101
    aux = T^(i-1)*S1;
    res(i) = aux(2);
    iterations(i) = i;
end

%b) plot(iterations, res)

%c)
res2 = zeros(1, 101);
res2(1) = 0;
for i = 2:101
    aux = T^(i-1)*S1;
    res(i) = aux(3);
    res2(i) = aux(5);
    iterations(i) = i;
end

%subplot(1,2,1);
%plot(iterations, res)

%subplot(1,2,2); 
%plot(iterations, res)

%d
%canonical form = [ Q 0
%                   R i ]
%    1   2   4   3   5 
C = [0.8 0   0.3 0   0
     0.2 0.6 0.2 0   0
     0   0.1 0.4 0   0
     0   0.3 0   1   0
     0   0   0.1 0   1];

disp(C);

%e)
Q = C(1:3, 1:3);
%F = (I - Q)^-1
F = (eye(3) - Q)^-1;

disp(F);

%f)
%   O tempo médio até à absorção será a soma do
% número médio de visitas a todos os estados transientes
% até à absorção
%   Ou seja a soma da coluna i de F
t = sum(F);

disp(t(1))
disp(t(2))
disp(t(3))


%g)

R = C(4:5, 1:3);
B = R*F;

disp(B(1,1))
disp(B(1,2))
