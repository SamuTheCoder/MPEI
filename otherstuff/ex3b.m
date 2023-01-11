T = 1000;
N = 1e5;
results = zeros(1,T);

for keys=1:1000
    exp = randi([0 T],keys,N); 
    collisions = zeros(1,N);
    
    for ncol=1:N
        col = exp(:,ncol);
        collisions(ncol) = length(unique(col)) ~= 10;
    end
    
    res = sum(collisions)/N;
    results(1,keys) = res;
end

x = linspace(1,1000,100);
y = results;
plot(x,y)