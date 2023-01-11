%% a
%    A   B   C   D   E   F
T = [0   0   0   0   1/3 0
     1   0   0   0   1/3 0
     0   1/2 0   1   0   0
     0   0   1   0   0   0
     0   1/2 0   0   0   0
     0   0   0   0   1/3 0];

X1 = [1/6 1/6 1/6 1/6 1/6 1/6]';

for i=1:10
    X1 = T*X1;
end
%disp(X1);

%b)
%   Spider trap: Grupos de páginas que têm links de saída mas
% apenas para esse grupo, impedindo a ida para
% outras páginas

% Dead-end: Becos sem saída

% No ex a spider trap acontece nas páginas C e D
% e a dead-end na página F

%c)
%    A   B   C   D   E   F
T = [0   0   0   0   1/3 1/6
     1   0   0   0   1/3 1/6
     0   1/2 0   1   0   1/6
     0   0   1   0   0   1/6
     0   1/2 0   0   0   1/6
     0   0   0   0   1/3 1/6];

X1 = [1/6 1/6 1/6 1/6 1/6 1/6]';

for i=1:10
    X1 = T*X1;
end

%disp(X1);

A = 0.8*T + 0.2*(1/6*ones(6))
