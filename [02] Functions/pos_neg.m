function [v1, v2] = pos_neg(v)
%-------------------------------------------------------------------------
% Title: Positive and Negative Number Separator
% Description: This function receives a vector (row or column) and returns 
%              two vectors: one containing all non-negative elements (>= 0) 
%              and another containing all negative elements (< 0). 
%              If the input is not a vector (excluding scalars), an error 
%              message is displayed.
% Usage:
%   [v1, v2] = posneg(v)
%   v  - Input vector (or scalar)
%   v1 - Vector of positive values (including zero)
%   v2 - Vector of negative values
% By: Teros
%-------------------------------------------------------------------------

% Validation
if ~isvector(v) && ~isscalar(v)
    error('Input must be a vector or a scalar')
end

% Separation into positive and negative values
v1 = v(v >= 0); % v1 -> non-negative values
v2 = v(v < 0);  % v2 -> negative values
