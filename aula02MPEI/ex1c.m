E = 1e5;% n de experiências
p = 0.5;%probabilidade de rapaz
l = 2;%n de filhos

families = rand(l,E)>p; %generates matrix with l rows and E collumns
boys = sum(families); %generates matrix (row vector) with sum of each column.

one_boy = sum(boys >=1); %sums all columns with a number greater or equal to one
two_boys = sum(boys == 2); 

p = (two_boys)/(one_boy);

disp(p);

%ex2a
% Probabilidade Teórica:
% Nº casos favoráveis/nº casos possíveis = 1/2 (MM, MF)
% probabilidade idêntica