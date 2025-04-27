clc; clear; close all

R = 10;
L = 10e-3;
C = 500e-6;
i_source = @(t) 5*sin(1000*pi*t);

odefun = @(t, v) [v(2); (i_source(t) - v(1)/R - v(2)*C)/L];

tspan = [0 0.1];
v0 = [0; 0];

[t, v] = ode45(odefun, tspan, v0);
vc = v(:,1);

figure;
plot(t, vc, 'LineWidth', 1.5);
xlabel('t (s)'); ylabel('v_C(t) (V)');
title('Tensão no condensador v_C(t)');
grid on
