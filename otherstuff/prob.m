function [sol] = prob(m, n)  
    E = 1e5;

    mx = randi(m,n,E);
    dif = zeros(1,E);

    for ncol=1: E
        col = mx(:,ncol); 
        dif(ncol)=length(unique(col))==n;
    end

    sol = 1 - (sum(dif)/E);
end