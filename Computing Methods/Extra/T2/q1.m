%% Q1
clc; clear; close all;
% q1.m
x = [1 2 3 4 5 6];
fx = [0.4 0.571 0.667 0.727 0.769 0.8];

% Linearização da função f(x) = a / (x + b) => 1/f = (1/a)*x + b/a
inv_fx = 1 ./ fx;

% Regressão linear
p = polyfit(x, inv_fx, 1);
a = 1 / p(1);
b = p(2) * a;

% Recriação da função f
x_vals = linspace(1, 6, 100);
f_aprox = @(x) a ./ (x + b);
y_vals = f_aprox(x_vals);

% Gráfico
figure;
plot(x, fx, 'ro', 'DisplayName','Dados originais'); hold on;
plot(x_vals, y_vals, 'b-', 'DisplayName','Ajuste por linearização');
xlabel('x'); ylabel('f(x)');
legend; grid on;
title('Ajuste de f(x) = a / (x + b)');

% Estimar x tal que f(x) = 0.6
func = @(x) a / (x + b) - 0.6;
x_est = fzero(func, 2); % chute inicial ~2 pelo gráfico

% Mostrar resultado
fprintf('O valor de x tal que f(x) = 0.6 é %.4f\n', x_est);



