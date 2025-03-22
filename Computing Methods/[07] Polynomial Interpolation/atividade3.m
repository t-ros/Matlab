clc; clear; close all;

%% (a) Dados da Tabela 5
x = 0:2:12;
y = [1.16 8.66 9.56 8.11 7.23 0.42 0.33];

xi = 0:0.1:12; % Novos pontos para interpolar

% Interpolações
y_linear = interp1(x, y, xi, 'linear');
y_makima = interp1(x, y, xi, 'makima');
y_v5cubic = interp1(x, y, xi, 'v5cubic');

%% (b) Gráfico com os dados e interpolações
figure;
plot(x, y, 'ko', 'MarkerFaceColor', 'k', 'DisplayName', 'Dados'); hold on;
plot(xi, y_linear, '-', 'LineWidth', 2, 'DisplayName', 'Linear');
plot(xi, y_makima, '-', 'LineWidth', 2, 'DisplayName', 'Makima');
plot(xi, y_v5cubic, '-', 'LineWidth', 2, 'DisplayName', 'v5cubic');
xlabel('x'); ylabel('y');
title('Interpolação com interp1');
legend('Location', 'northeast');
grid on;

%% (c) Solicitar valor de xi ao utilizador
while true
    xi_user = input('\nIndique o valor de xi a interpolar [0.0, 12.0]: ');
    if xi_user >= 0 && xi_user <= 12
        break;
    else
        fprintf('O valor deve estar no intervalo [0.0, 12.0]!!\n');
    end
end

% Arredondar para uma casa decimal
xi_user = round(xi_user, 1);

% Calcular interpolações no ponto xi_user
yl = interp1(xi, y_linear, xi_user);
ym = interp1(xi, y_makima, xi_user);
yv = interp1(xi, y_v5cubic, xi_user);

% Apresentar resultados
fprintf('Interpolação linear: yl(%.1f) = %.2f\n', xi_user, yl);
fprintf('Interpolação makima: ym(%.1f) = %.2f\n', xi_user, ym);
fprintf('Interpolação v5cubic: yv(%.1f) = %.2f\n', xi_user, yv);