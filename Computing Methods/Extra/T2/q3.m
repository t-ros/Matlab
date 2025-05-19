%% Q3
clc; clear; close all;
% q3.m
% Define o sistema de EDOs
% v''(t) + dv/dt + 2v = e^(-t)
% y(1) = v, y(2) = dv/dt
f = @(t, y) [y(2); exp(-t) - y(2) - 2*y(1)];

% Condições iniciais
y0 = [10; 0];

% Intervalo de tempo
tspan = [0 20];

% Resolução com ode45
[t, y] = ode45(f, tspan, y0);

% Gráficos
figure;
subplot(2,1,1);
plot(t, y(:,1), 'b');
xlabel('Tempo (s)');
ylabel('Tensão v(t) (V)');
title('Evolução da tensão');

subplot(2,1,2);
plot(t, y(:,2), 'r');
xlabel('Tempo (s)');
ylabel('Derivada dv/dt (V/s)');
title('Derivada da tensão');

