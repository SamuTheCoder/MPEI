n = 20;
N = 1e5;
p = 0.5;

mx = rand(n,N) > p;

univ = sum(sum(mx)==10);    % sum(mx) == 10 -> row vector com o número de colunas com soma 10
			    % ( 10 cartas vermelhas(1's) e 10 cartas pretas(0's)), ou seja, universo 
ch = mx(1:2:end,:);         % matriz original, apenas com as linhas ímpares (verificar alternadamente)
res = sum(ch);              % Sumar valores da mesma coluna
res = res==10 | res==0;     % Filtrar se essa soma é igual a 10 ou 0, ou seja, a coluna era toda ela 0 ou toda 1
			    % se sim, quer dizer que as linhas pares do universo são da cor oposta
			    % ou seja, quantas sequências são alternadas
prob = sum(res)/univ;       % Número de ocorrênias anteriores a dividir pelas ocorrências totais

format long;

disp(prob);
