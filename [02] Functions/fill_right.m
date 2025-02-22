function v = fill_right(str, n)
%-------------------------------------------------------------------------
% Title: Right Padding String Function
% Description: This function right-pads the string `str` with space 
%              characters until its length reaches `n`. If `str` is 
%              longer than `n`, it is truncated to `n` characters.
% Usage:
%   v = fillRight(str, n)
%   str - Input string (row vector of characters)
%   n   - Desired final length (must be >= 1)
% By: Teros
%-------------------------------------------------------------------------

% Validation
if n < 1
    error('Error using fillRight: n must be greater than or equal to 1')
end

if size(str, 1) ~= 1
    error('Error using fillRight: str must be a row vector of characters')
end

% Padding or truncation
if length(str) < n
    v = [str, repmat(' ', 1, n - length(str))]; % Pad with spaces
else
    v = str(1:n); % Truncate string to n characters
end
