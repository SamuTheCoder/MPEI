T = 1000;
N = 1e5;
keys = 10;

exp = randi([0 T],keys,N); 
collisions = zeros(1,N);

for ncol=1:N
    col = exp(:,ncol);
    collisions(ncol) = length(unique(col)) ~= 10;
end

res = sum(collisions)/N;

disp(res);

