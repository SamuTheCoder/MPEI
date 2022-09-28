E = 1e5;
p = 0.5;
l = 2;

families = rand(l,E)>p;
one_boy = sum(families(1,:)==1); %all cases where the first child is a boy

boys = sum(families); %row vector with all the boys
two_boys = sum(boys == 2);%all cases where both childs are boys

p = two_boys/one_boy;%number of families with 2 boys/families where 
                     % the first kid is a boy

disp(p);