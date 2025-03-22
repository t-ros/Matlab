clc; clear; close all;
%% (b) Dados da Tabela 4
x = [0.2 0.4 0.5 0.8 1.1 1.3];
y = [0.8752 0.7659 0.7165 0.5866 0.4803 0.4204];

xi = 0.9; % ponto a interpolar
yi_real = exp(-2 * xi / 3); % valor real teórico para comparação

fprintf('Interpolação de Newton para x = %.1f\n', xi);
fprintf('Valor real: %.8f\n\n', yi_real);

% Testar todos os subconjuntos consecutivos de 4 pontos
for i = 1:length(x)-3
    x_sub = x(i:i+3);
    y_sub = y(i:i+3);

    yi_interp = NewtonInterp(x_sub, y_sub, xi);
    erro = abs(yi_real - yi_interp);

    fprintf('Pontos usados: xi = [%.1f %.1f %.1f %.1f] => yi = %.8f | erro = %.2e\n', ...
        x_sub(1), x_sub(2), x_sub(3), x_sub(4), yi_interp, erro);
end