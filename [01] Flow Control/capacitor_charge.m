%-------------------------------------------------------------------------
% Title: Capacitor Charging Simmulation
% Description: This script simulates the charging of a capacitor in an RC
%             circuit over time. It calculates the capcitor's charge 
%             using the exponential charging equation and displays the
%             charge each time step until it reaches 3C.
% By: Teros
%-------------------------------------------------------------------------

clc, clear

V = 24; % Voltage (V)
R = 10; % Resistance (Ohms)
C = 2;  % Capacitance (F)
t = 0;  % Time (s)
Q = 0;  % Initial charge (C)

disp('Time (s) | Capacitor Charge (C)')

while Q < 3
    Q = C*V*(1-exp(-t/(R*C))); % Exponential charging equation
    t = t + 0.1; % Time step increment
    
    fprintf('%0.2f s -> %0.4f C\n', t, Q)
end