d = 365;
N = 1e5;
n = 2;
res = 0;

while res < 0.5
    exp = randi(d,n,N); 
    sameBdays = zeros(1,N);
   
    for ncol=1:N
        col = exp(:,ncol);
        sameBdays(ncol) = length(unique(col)) ~= n;
    end
  
    res = sum(sameBdays)/N;
    n = n + 1;
end

disp(n-1)
 