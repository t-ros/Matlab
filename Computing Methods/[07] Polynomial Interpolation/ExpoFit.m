function [a, b] = ExpoFit(x, y)
% ExpoFit - Ajusta uma função exponencial y = a*exp(bx) aos dados (x, y)
% usando linearização com logaritmo natural

% Linearização dos dados
lny = log(y);

% Regressão linear: ln(y) = ln(a) + bx
p = polyfit(x, lny, 1);
b = p(1);
a = exp(p(2));
end
