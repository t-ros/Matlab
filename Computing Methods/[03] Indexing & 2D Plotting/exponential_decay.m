%-------------------------------------------------------------------------
% Title: Damped Oscillations - Exponential Decay  
% Description: This script generates and plots two damped oscillations:  
%              - y1: Exponentially decaying sine function  
%              - y2: Exponentially decaying cosine function  
%              The number of points has been increased for smoother curves.  
%              Each function is plotted in a separate figure with labeled axes.  
% By: Teros  
%-------------------------------------------------------------------------

clear;  
clc;  
close all;  

t = linspace(0, 10, 1000); % d) Increased from 10 to 1000 points for smoother curves

y1 = exp(-0.4*t).*sin(t);
y2 = exp(-0.4*t).*cos(t);

% First figure
figure;
plot(t, y1, 'r', 'linewidth', 2);  
grid on;
title('Figure 1');
xlabel('t (seconds)'); % e) Define x-axis label
ylabel('e^{-0.4t} sin(t)'); % f) Define y-axis label with mathematical formatting

% Second figure
figure;  
plot(t, y2, 'b', 'linewidth', 2);
grid on;
title('Figure 2');
xlabel('t (seconds)'); % e) Define x-axis label
ylabel('e^{-0.4t} cos(t)'); % f) Define y-axis label with mathematical formatting
