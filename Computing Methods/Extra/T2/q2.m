%% Q2
clc; clear; close all;
% q2.m
Ti = [-200 -100 0 100 200 300 400 500];
Vi = [-9.07 -5.43 0.00 6.11 13.32 20.91 28.88 36.93];

p = input('Introduza o passo de temperatura (0 < p < 20): ');
while p <= 0 || p >= 20
    p = input('Valor inválido. Tente novamente (0 < p < 20): ');
end

T = Ti(1):p:Ti(end);
V = termopar(T);

% Gráfico
figure;
plot(T, V, 'b-', 'DisplayName','Interpolação'); hold on;
plot(Ti, Vi, 'ro', 'DisplayName','Dados');
xlabel('Temperatura (°C)');
ylabel('Tensão (V)');
title('Interpolação da tensão do termopar');
legend; grid on;

function V = termopar(T)
    % Dados da tabela
    Ti = [-200 -100 0 100 200 300 400 500];
    Vi = [-9.07 -5.43 0.00 6.11 13.32 20.91 28.88 36.93];
    
    % Interpolação polinomial de ordem 2
    V = interp1(Ti, Vi, T, 'pchip'); % alternativa a 'polyfit' em intervalos
end