clc; clear; close all

f = @(x, y) x - (x .* y) / 2;
h_values = [0.8, 0.4, 0.2];
y0 = -1;

hold on
colors = 'rgb';
for k = 1:length(h_values)
    h = h_values(k);
    x = 0:h:4;
    y = EulerODE(f, x, y0);
    plot(x, y, 'o-', 'Color', colors(k));
end

x_analitico = linspace(0, 4, 100);
y_analitico = (-2/3) * exp(-x_analitico.^2/4);
plot(x_analitico, y_analitico, 'k-', 'LineWidth', 1.5)

legend('h=0.8', 'h=0.4', 'h=0.2', 'Analítica')
xlabel('x'); ylabel('y(x)');
title('Solução numérica e analítica');
grid on
