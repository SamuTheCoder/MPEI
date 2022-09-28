E = 1e5;% n de experiências
p = 0.5;%probabilidade de rapaz
l = 2;%n de filhos

families = rand(l,E)>p;

prob = sum(sum(families)>=1)/E;

disp(prob);

%ex2a
% Probabilidade Teórica:
% Nº casos favoráveis/nº casos possíveis = 3/4 (MM, MF, FM, FF)
% probabilidade idêntica