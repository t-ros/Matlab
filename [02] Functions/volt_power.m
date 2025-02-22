function [V, P] = volt_power(R, I)
%-------------------------------------------------------------------------
% Title: Voltage and Power Calculation
% Description: This function calculates the voltage across a resistor (R) 
%              and the power dissipated when a current (I) flows through it.
% Usage:
%   [V, P] = voltpower(R, I)
%   V - Voltage across the resistor R (V)
%   P - Power dissipated in R (W)
%   R - Electrical resistance, R >= 0 Ohms (scalar)
%   I - Electrical current (A) (vector)
% By: Teros
%-------------------------------------------------------------------------

% Validations
x = R;
y = I;

if ~isscalar(x)
    error('R must be a scalar value')
end

if x < 0
    error('R must be greater than or equal to zero')
end

if ~isvector(y)  
    error('I must be a scalar or a vector')
end

% Calculations
V = R * I;
P = R * I.^2;

% Test cases for the errors
% [V, P] = voltpower([1 2 3],2)  
% [V, P] = voltpower(-5,2)
% [V, P] = voltpower(5,[1 2; 3 4]) 
