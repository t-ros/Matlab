clc; clear; close all;

%% (b1) Dados experimentais (t em ms, i em A)
t = [0 5 10 15 20 25];       % tempo (ms)
i = [0.192 0.141 0.110 0.071 0.055 0.041]; % corrente (A)

%% Obter coeficientes a e b
[a, b] = ExpoFit(t, i);

% Criar função anónima para corrente estimada
i_fit = @(t) a * exp(b * t);

%% (b2) Determinar resistência R
C = 15e-6;           % Capacitância (F)
tau = -1/b;          % Constante de tempo RC
R = tau / C;         % R = tau / C

fprintf('Valor estimado da resistência: R = %.2f Ohm\n', R);

%% (b3) Estimar corrente e carga para t = 30 ms e 40 ms
t_ext = [30 40];
i30 = i_fit(30);
i40 = i_fit(40);
Q30 = i30 * R * C;  % Q = I*RC
Q40 = i40 * R * C;

fprintf('Corrente em t = 30 ms: %.4f A | Carga: %.4e C\n', i30, Q30);
fprintf('Corrente em t = 40 ms: %.4f A | Carga: %.4e C\n', i40, Q40);

%% (b4) Gráfico dos dados e curva ajustada
t_plot = linspace(0, 40, 200);
i_plot = i_fit(t_plot);

figure;
plot(t, i, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Dados experimentais'); hold on;
plot(t_plot, i_plot, 'r-', 'LineWidth', 2, 'DisplayName', 'Ajuste exponencial');
xlabel('Tempo (ms)');
ylabel('Corrente (A)');
title('Descarga do Condensador - Ajuste Exponencial');
legend('Location', 'northeast');
grid on;