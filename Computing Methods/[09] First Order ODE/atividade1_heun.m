clc; clear; close all

f = @(x, y) x - (x .* y) / 2;
y0 = -1;
h = 0.8;
x = 0:h:4;

y_euler = EulerODE(f, x, y0);
y_heun = HeunODE(f, x, y0);

x_analitico = linspace(0, 4, 100);
y_analitico = (-2/3) * exp(-x_analitico.^2/4);

figure;
plot(x, y_euler, 'bo-', x, y_heun, 'rs-', x_analitico, y_analitico, 'k-', 'LineWidth', 1.5)
legend('Euler', 'Heun', 'Analítica')
xlabel('x'); ylabel('y(x)');
title('Comparação Euler vs Heun vs Solução Analítica');
grid on
