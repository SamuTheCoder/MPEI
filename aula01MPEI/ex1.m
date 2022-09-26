%experiencias = rand(3, 10000);
%lancamentos = experiencias > 0.5; 
%resultados = sum(lancamentos);
%sucessos = resultados == 2;

%probLancamentos = sum(sucessos)/10000;

N = 1e5; %nsQumero de experiˆencias
p = 0.5; %probabilidade de cara
k = 2; %n ́umero de caras
n = 3; %n ́umero de lanc ̧amentos

lancamentos = rand(n, N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;