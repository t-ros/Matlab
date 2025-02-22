function B = swap_columns(A, i, j)
%-------------------------------------------------------------------------
% Title: Column Swap in a Matrix
% Description: This function returns matrix A with columns i and j swapped.
% Usage:
%   M = swapColumns(A, i, j)
%   A - A matrix with at least 2 columns.
%   i, j - Column indices (must be between 1 and the number of columns in A).
% By: Teros
%-------------------------------------------------------------------------

% Error Handling
if size(A, 2) < 2
    error('A must be a matrix with at least 2 columns.')
end

if i < 1 || i > size(A, 2)
    error('i must be a positive integer less than or equal to the number of columns in A.')
end

if j < 1 || j > size(A, 2)
    error('j must be a positive integer less than or equal to the number of columns in A.')
end

% Swapping Columns
B = A;
B(:, [i, j]) = B(:, [j, i]); % Corrected the column swap operation

end

% Test Cases
% >> M = [10 40 70 100; 20 50 80 110; 30 60 90 120]
% M =
%  10  40  70  100
%  20  50  80  110
%  30  60  90  120
% >> N = swapColumns(M, 2, 4)
% N =
%  10  100  70  40
%  20  110  80  50
%  30  120  90  60
% >> swapColumns(M, 2, 6)
% Error using swapColumns
% i and j must be between 1 and the number of columns in A.
