N = 1e5; %nsQumero de experiˆencias
p = 0.5; %probabilidade de cara
k = 6; %n ́umero de caras
n = 15; %n ́umero de lanc ̧amentos

lancamentos = rand(n, N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;