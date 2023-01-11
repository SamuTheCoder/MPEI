m = 100;
n = 20;
E = 1e5;

mx = randi(m,n,E);
dif = zeros(1,E);

for ncol=1: E
    col = mx(:,ncol); 
    dif(ncol)=length(unique(col))==n;
end

prob = 1 - (sum(dif)/E); %opposite of the exercise 2a

disp(prob);

%it could also be :
%dif(ncol = length(unique(col)) < n; since we are measuring the probability
%of the existence of at least one repeated number on the columns (same
%target hitted by the same dart
%and then prob = sum(dif)/E