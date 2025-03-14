%-------------------------------------------------------------------------
% Title: 2D and Polar Plotting with Subplots  
% Description: This script generates various types of plots, including:  
%              - Cartesian plots with different line styles and markers.  
%              - Polar plots of trigonometric functions.  
%              - Subplots of functions with different time dependencies.  
%              - Stem and stairs plots for discrete-time signals.  
% By: Teros  
%-------------------------------------------------------------------------

clear;  
clc;    
close all;  

%% Graph 1 - Curves y1(x) and y2(x)
x = 0:0.5:20; % Define x-axis
y1 = sqrt(x).*cos(x);
y2 = sqrt(x).*sin(x);

figure;
plot(x, y1, 'b--s', 'LineWidth', 1.5, 'MarkerSize', 6); % Blue dashed line with square markers
hold on;
plot(x, y2, 'r-.d', 'LineWidth', 1.5, 'MarkerSize', 6); % Red dash-dot line with diamond markers
grid on;
title('y_1(x) = x^{1/2}cos(x), y_2(x) = x^{1/2}sin(x)');
xlabel('x-axis');
ylabel('y(x)');
legend('y_1(x)', 'y_2(x)');

%% Graph 2 - Polar Curves r1(θ) and r2(θ)
theta = linspace(0, pi, 50);
r1 = cos(3*theta);
r2 = 2*sin(5*theta);

figure;
polarplot(theta, r1, 'b-x', 'LineWidth', 1.5, 'MarkerSize', 6); % Blue with 'x' markers
hold on;
polarplot(theta, r2, 'r-o', 'LineWidth', 1.5, 'MarkerSize', 6); % Red with 'o' markers
title('r1(\theta) = cos(3\theta),   r2(\theta) = 2sin(5\theta)');
legend('r1(\theta)', 'r2(\theta)');

%% Graph 3 - Subplots of y(t), y1(t), and y2(t)
t = linspace(0, 6, 100);
y = sin(t).*cos(12*t);
y1 = cos(12*t);
y2 = sin(t);

figure;
subplot(2,1,1); % First subplot (2 rows, 1 column, position 1)
plot(t, y, 'b', 'LineWidth', 1.5);
grid on;
title('y(t) = sin(t)cos(12t)');
xlabel('t (ms)');
ylabel('y(t)');

subplot(2,2,3); % Second subplot (2 rows, 2 columns, position 3)
plot(t, y1, 'b', 'LineWidth', 1.5);
grid on;
title('y_1(t) = cos(12t)');
xlabel('t (ms)');

subplot(2,2,4); % Third subplot (2 rows, 2 columns, position 4)
plot(t, y2, 'b', 'LineWidth', 1.5);
grid on;
title('y_2(t) = sin(t)');
xlabel('t (ms)');

%% Graph 4 - Stem and Stairs Plots
t = linspace(0, 6, 20);
x1 = sin(2*t);
x2 = cos(2*t);

figure;
subplot(1,2,1);
stem(t, x1, 'b', 'LineWidth', 1.5);
grid on;
title('x_1(t) = sin(2t) - stem() plot');
xlabel('t');
ylabel('x_1(t)');

subplot(1,2,2);
stairs(t, x2, 'r-s', 'LineWidth', 1.5, 'MarkerSize', 6);
grid on;
title('x_2(t) = cos(2t) - stairs() plot');
xlabel('t');
ylabel('x_2(t)');
