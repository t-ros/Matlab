clc; clear; close all

%% a) Gráfico da função
syms x
f_sym = x^4 + 10*x^3 - 20*x - 15;
f = matlabFunction(f_sym); % converte expressões simbólicas em funções anónimas

figure; 
fplot(f_sym, [0, 2], 'LineWidth', 1.5); grid on;
xlabel('x'); ylabel('f(x)');
title('Gráfico da função f(x)');

%% b) Método do gradiente
df = diff(f_sym, x);
grad = matlabFunction(df);

x1 = 1; % valor inicial
h = 0.005; % passo
nmax = 1000; % número máximo de iterações

for i = 1:nmax
    x1_new = x1 - grad(x1)*h;
    if f(x1_new) > f(x1)
        break
    end
    x1 = x1_new;
end

fprintf('\nO valor mínimo foi ultrapassado após %d iterações\n', i);
fprintf('--- Método do gradiente ---\n');
fprintf('O mínimo local é aproximadamente em x = %.4f\n', x1);
fprintf('O valor mínimo da função é f(xmin) = %.4f\n\n', f(x1));

%% c) Método fminbnd
[xmin, fmin] = fminbnd(f, 0, 2);

fprintf('--- fminbnd ---\n');
fprintf('O mínimo local é em x = %.4f\n', xmin);
fprintf('O valor mínimo da função é f(xmin) = %.4f\n\n', fmin);
