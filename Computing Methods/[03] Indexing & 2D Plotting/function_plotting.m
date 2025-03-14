%-------------------------------------------------------------------------
% Title: 2D Function Plotting  
% Description: This script generates and plots three mathematical functions:  
%              - f(x) = e^(-0.5x) * cos(5x), for x ∈ [0,10]  
%              - h(z) = |sin(z² / 2 * e^(-z/2))|, for z ∈ [0,3]  
%              - p(w) = sin(w)/w and q(w) = sin(3/2 w)/(2w), for w ∈ [-10,10]  
%              Each function is plotted in a separate figure with labeled axes and legends.  
% By: Teros  
%-------------------------------------------------------------------------

clear;  
clc;  
close all;

% ---- Graph 1: f(x) = e^(-0.5x) * cos(5x), x ∈ [0,10] ----
x = linspace(0, 10, 1000); % Interval with enough points for smoothness
f_x = exp(-0.5*x) .* cos(5*x);

subplot(1,3,1)
plot(x, f_x, 'r', 'linewidth', 2);
grid on;
title('Graph of f(x) = e^{-0.5x} cos(5x)');
xlabel('x');
ylabel('f(x)');
legend('f(x)', 'Location', 'Best');

% ---- Graph 2: h(z) = |sin(z² / 2 * e^(-z/2))|, z ∈ [0,3] ----
z = linspace(0, 3, 1000);
h_z = abs(sin(z.^2 ./ 2 .* exp(-z./2)));

subplot(1,3,2)
plot(z, h_z, 'b', 'linewidth', 2);
grid on;
title('Graph of h(z) = |sin(z^2 / 2 e^{-z/2})|');
xlabel('z');
ylabel('h(z)');
legend('h(z)', 'Location', 'Best');

% ---- Graph 3: p(w) = sin(w)/w and q(w) = sin(3/2 w)/(2w), w ∈ [-10,10] ----
w = linspace(-10, 10, 1000);
p_w = sin(w) ./ w;
q_w = sin((3/2) * w) ./ (2*w);

subplot(1,3,3)
plot(w, p_w, 'g', 'linewidth', 2);
hold on;
plot(w, q_w, 'm', 'linewidth', 2);
grid on;
title('Graph of p(w) and q(w)');
xlabel('w');
ylabel('p(w), q(w)');
legend('p(w) = sin(w)/w', 'q(w) = sin(3/2 w) / (2w)', 'Location', 'Best');
hold off;
