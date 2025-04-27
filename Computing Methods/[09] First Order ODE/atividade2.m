clc; clear; close all

R = 10;
L = 1;
v_const = 200;
v_sin = @(t) 200*sin(100*pi*t);

% Corrente com v(t) constante
odefun1 = @(t,i) (v_const - R*i)/L;
[t1, i1] = ode45(odefun1, [0 1], 0);

figure;
plot(t1, i1, 'LineWidth', 1.5);
xlabel('t (s)'); ylabel('i(t) (A)');
title('Corrente com v(t) constante');
grid on

% Corrente com v(t) senoidal
odefun2 = @(t,i) (v_sin(t) - R*i)/L;
[t2, i2] = ode45(odefun2, [0 0.5], 0);

figure;
plot(t2, i2, 'LineWidth', 1.5);
xlabel('t (s)'); ylabel('i(t) (A)');
title('Corrente com v(t) = 200sin(100πt)');
grid on
