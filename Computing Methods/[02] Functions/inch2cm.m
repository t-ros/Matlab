function x = inch2cm(num)
%-------------------------------------------------------------------------
% Title: Inches to Centimeters Converter
% Description: This function converts a given length from inches to 
%              centimeters. It takes a numerical input (num) representing 
%              inches and returns the equivalent value in centimeters.
% Usage:
%   x = inch2cm(num)
%   num - Length in inches (must be >= 0)
%   x   - Converted length in centimeters
% By: Teros
%-------------------------------------------------------------------------

% Validation
if num < 0
    error('The value must be greater than or equal to zero')
end

% Conversion
x = 2.54 * num;
