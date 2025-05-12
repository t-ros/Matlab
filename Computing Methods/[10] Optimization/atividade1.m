clc; clear; close all

% a) Gráfico da função
syms x
f_sym = x^4 + 10*x^3 - 20*x - 15;
f = matlabFunction(f_sym);

fplot(f, [-3, 2], 'LineWidth', 1.5); grid on;
xlabel('x'); ylabel('f(x)');
title('Gráfico da função f(x)');

% b) Método do gradiente
df = diff(f_sym, x);
grad = matlabFunction(df);

xk = 0.5; % valor inicial
s = 0.005;
maxIter = 1000;

for i = 1:maxIter
    xk_new = xk - s * grad(xk);
    if f(xk_new) > f(xk)
        break
    end
    xk = xk_new;
end

fprintf('\nO valor mínimo foi ultrapassado após %d iterações\n', i);
fprintf('--- Método do gradiente ---\n');
fprintf('O mínimo local é aproximadamente em x = %.4f\n', xk);
fprintf('O valor mínimo da função é f(xmin) = %.4f\n\n', f(xk));

% c) Método fminbnd
[xmin, fmin] = fminbnd(f, 0, 2);

fprintf('--- fminbnd ---\n');
fprintf('O mínimo local é em x = %.4f\n', xmin);
fprintf('O valor mínimo da função é f(xmin) = %.4f\n\n', fmin);
