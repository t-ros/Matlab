function y = average(x)
%-------------------------------------------------------------------------
% Title: Vector Mean Calculation
% Description: This function calculates the arithmetic mean of a given 
%              vector. If the input is not a vector, an error message 
%              is displayed.
% Usage:
%   y = average(x)
%   x - Input vector
%   y - Mean value of the elements in x
% By: Teros
%-------------------------------------------------------------------------

% Validation: Check if x is a vector
if ~isvector(x) 
    error('Input must be a vector.') % Display error message in the command window
end

% Compute the mean
y = sum(x) / length(x); 

end
