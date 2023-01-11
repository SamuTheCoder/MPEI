Tij = [0.7 0.8
       0.3 0.2];
   
X0 = [0 1]';

%X2 = TijX1 = Tij(TijX0) = Tij^2 X0
X2 = Tij^2*X0;
fprintf('1b) reposta = %f\n', X2(1)); %we choose the first position because it's the probability of attending