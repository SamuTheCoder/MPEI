m = 100;
n = 20;
E = 1e5;

mx = randi(m,n,E);
dif = zeros(1,E);

for ncol=1: E
    col = mx(:,ncol); %for each column
    dif(ncol)=length(unique(col))==n; %check if every dart hit a diferent target (if it did, then it's a successful experience)
end

prob =(sum(dif)/E); %favorable cases/universe


disp(prob);