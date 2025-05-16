%% P1
clc; clear;

% Coeficientes
num = [1,-2, 3];
den = [1, -1/2, 1/3];

% Frequências ω = 0 e π
w = [0 pi];
z = exp(1j * w);
H = polyval(num, z.^-1) ./ polyval(den, z.^-1);

fprintf('H(0) = %.4f\n', H(1));
fprintf('H(pi) = %.4f\n', H(2));
%% P2
clc; clear;
num = [1 1];
den = [1 -2/5 1/25];

% Resposta ao impulso
h = filter(num, den, [1 zeros(1,10)]);
disp(h(1:6))  % mostra os primeiros termos

