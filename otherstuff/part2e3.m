N = 1e5;
n = 4;

xi = 0:4;

universe = rand(n,N) <0.5;

freq = sum(universe); %sum of the lines, line vector with the number of heads per 4 throws
fx = zeros(1,5);
%% 

for i=0:n
    fx(i+1) = sum(freq==i)/N; %sum(freq==i) sums the number of experiences in which there where i heads, dividing by N to get the probability
end
fx = [fx 0];
xi = 0:5;
stem(xi, fx);
xlabel('Number of heads')
ylabel('Frequency')
%% 

