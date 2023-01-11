Tij = [0.7 0.8
       0.3 0.2];
   
X0 = [1 0]';

%X2 = TijX1 = Tij(TijX0) = Tij^2 X0
X2 = Tij^15*X0;
fprintf('1c) Answer = %f\n', X2(1)); 