X = {1,2,3,4,5,6};
xi = 1:6;
p = ones(1,6)/6;

Fx = cumsum(p);
stairs(xi,Fx)

plot(xi,p);
xlabel('x')
ylabel('px(x)')
