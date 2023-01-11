T = [0.7 0.2 0.3; 0.2 0.3 0.3; 0.1 0.5 0.4];

X1 = [1; 0; 0];

%Xn = T^n-1 * X1

X2 = T*X1;
X3 = T^2*X2;

v2=T*X1;
v3=T*X1;
res_a = X1(1)*v2(1)*v3(1);
disp(res_a)
fprintf("------------------\n")

%c)
v2 = T*X1; %probability of being sunny on second day = v2(1), cloudy = v2(2), rainy = v2(3)
w = v2/(v2(1) + v2(2)); %state vector to calculate v3
v3 = T*w; %state vector of not being raining on 3rd day
res_c = x(1)*(v2(1)+v2(2)) * (v3(1)+v3(2));
disp(res_c)
fprintf("------------------\n")

%d)
sunnySum = X1(1);        %first day was sunny
cloudsSum = X1(2);
rainySum = X1(3);
for i = 2:31
    X1 = T*X1;
    sunnySum = sunnySum + X1(1);
    cloudsSum = cloudsSum + X1(2);
    rainySum = rainySum + X3(3);
end
disp(sunnySum);
disp(cloudsSum);
disp(rainySum);

%f (comparison)
fprintf("The person will have the following number of days of pain:\n")
disp(sunnySum * 0.1);
disp(cloudsSum * 0.3);
disp(rainySum * 0.5);
fprintf("------------------\n")

%e
X1 = [0 0 1]';
sunnySum = X1(1);
cloudsSum = X1(2);
rainySum = X1(3);
for i = 2:31
    X1 = T*X1;
    sunnySum = sunnySum + X1(1);
    cloudsSum = cloudsSum + X1(2);
    rainySum = rainySum + X1(3);
end
disp(sunnySum);
disp(cloudsSum);
disp(rainySum);

%f (comparison)
fprintf("The person will have the following number of days of pain:\n")
disp(sunnySum * 0.1);
disp(cloudsSum * 0.3);
disp(rainySum * 0.5);