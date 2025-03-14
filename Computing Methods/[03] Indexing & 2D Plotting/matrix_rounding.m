%-------------------------------------------------------------------------
% Title: Matrix Rounding Based on Thresholds
% Description: This script generates a 5x200 matrix with random values, then  
%              rounds values below 0.3 to 0 and values above 0.7 to 1.  
%              It also counts and displays the number of values rounded  
%              to 0 and 1.  
% By: Teros
%-------------------------------------------------------------------------

clc, clear

A = rand(5, 200);

% Initial count of rounded values
zeros_count = sum(A(:) < 0.3);
ones_count = sum(A(:) > 0.7);

% Apply rounding based on conditions
A(A < 0.3) = 0;
A(A > 0.7) = 1;

% Display messages with rounding counts
fprintf('Rounded to zero: %d values in matrix A\n', zeros_count);
fprintf('Rounded to one: %d values in matrix A\n', ones_count);
