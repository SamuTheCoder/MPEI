E = 1e5;
p = 0.5;
l = 5;

families = rand(l,E)>p;

one_boy = sum(sum(families)>=1);
two_boys = sum(sum(families)==2);

prob = two_boys/one_boy;

disp(prob);