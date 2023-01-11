keys = 50;
N = 1e5;
results = zeros(1,10); %for each value of T

for T=100:100:1000
    exp = randi([0 T],T,N); 
    collisions = zeros(1,N);
    
    for ncol=1:N
        col = exp(:,ncol);
        collisions(ncol) = length(unique(col)) == 10; %it's the equal sign because there shouldn't be a collision
    end
    
    res = sum(collisions)/N;
    results(1,T) = res;
end

x = linspace(1,1000,100);
y = results;
plot(x,y)