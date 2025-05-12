clc; clear; close all

f = @(x) -(20*x(1) + 30*x(2));  % função a maximizar (minimizamos -f)

x0 = [1 1];
A = [1 1; -0.1 -0.2];
b = [100; 14];
lb = [20 0];
ub = [];

[xopt, fval] = fmincon(f, x0, A, b, [], [], lb, ub);

fprintf('A função tem um valor máximo em (x1, x2) = (%.1f, %.1f)\n', xopt(1), xopt(2));
fprintf('f(%.1f, %.1f) = %.2f\n', xopt(1), xopt(2), -fval);
