clc; clear; close all;

% Definir os polinómios
p1 = [3 4];          % p1(x) = 3x + 4
p2 = [1 0 -10];      % p2(x) = x^2 - 10
p3 = [0.5 -0.5 -8 0]; % p3(x) = -0.5x^3 + 8x - 0.5
p4 = [-0.2 0 4 0 -2];     % p4(x) = 0.2x^2 + 2x - 4

x_val=-1.5;
% (b) Solicitar um valor de x dentro do intervalo [-4, 4]
x_val = input('Indique um valor de x entre -4 e 4: ');
while x_val < -4 || x_val > 4
    disp('Erro! O valor deve estar entre -4 e 4.');
    x_val = input('Indique um valor de x entre -4 e 4: ');
end

% (c) Calcular os valores dos polinómios para x_val
y1 = polyval(p1, x_val);
y2 = polyval(p2, x_val);
y3 = polyval(p3, x_val);
y4 = polyval(p4, x_val);

fprintf('\nValores dos polinómios para x = %.2f:\n', x_val);
fprintf('p1(x) = %.2f\n', y1);
fprintf('p2(x) = %.2f\n', y2);
fprintf('p3(x) = %.2f\n', y3);
fprintf('p4(x) = %.2f\n', y4);

% (d) Gerar gráfico dos polinómios no intervalo [-5, 5]
x = linspace(-5, 5, 100);
y1_plot = polyval(p1, x);
y2_plot = polyval(p2, x);
y3_plot = polyval(p3, x);
y4_plot = polyval(p4, x);

figure;
hold on;
plot(x, y1_plot, 'r', 'LineWidth', 2); % Azul para p1
plot(x, y2_plot, 'b', 'LineWidth', 2); % Vermelho para p2
plot(x, y3_plot, 'g', 'LineWidth', 2); % Verde para p3
plot(x, y4_plot, 'm', 'LineWidth', 2); % Magenta para p4

% (e) Marcar os valores calculados na alínea c) com cruz preta
plot(x_val, y1, 'k+', 'MarkerSize', 10, 'LineWidth', 2);
plot(x_val, y2, 'k+', 'MarkerSize', 10, 'LineWidth', 2);
plot(x_val, y3, 'k+', 'MarkerSize', 10, 'LineWidth', 2);
plot(x_val, y4, 'k+', 'MarkerSize', 10, 'LineWidth', 2);

% (f) Calcular raízes dos polinómios
r1 = roots(p1);
r2 = roots(p2);
r3 = roots(p3);
r4 = roots(p4);

fprintf('\nZeros dos polinómios:\n');
fprintf('Zero do polinómio p1(x): %.2f\n', r1);
fprintf('Zeros do polinómio p2(x): %.2f, %.2f\n', r2);
fprintf('Zeros do polinómio p3(x): %.2f, %.2f, %.2f\n', r3);
fprintf('Zeros do polinómio p4(x): %.2f, %.2f, %.2f, %.2f\n', r4);

% Adicionar marcadores redondos para os zeros
plot(r1, zeros(size(r1)), 'ro', 'MarkerSize', 8, 'LineWidth', 2);
plot(r2, zeros(size(r2)), 'bo', 'MarkerSize', 8, 'LineWidth', 2);
plot(r3, zeros(size(r3)), 'go', 'MarkerSize', 8, 'LineWidth', 2);
plot(r4, zeros(size(r4)), 'mo', 'MarkerSize', 8, 'LineWidth', 2);

% (g) Configurar legenda e rótulos
xlabel('x'); ylabel('p(x)');
legend('p1(x) = 3x + 4', 'p2(x) = x^2 - 10', ...
       'p3(x) = 0.5x^3 - 0.5x^2 - 8x', 'p4(x) = -0.2x^4 + 4x^2 - 2', ...
       'Location', 'best');
grid on;
title('Representação dos Polinómios');
hold off;