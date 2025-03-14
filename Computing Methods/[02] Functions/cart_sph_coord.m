function [r, t, f] = cart_sph_coord(x, y, z)
%-------------------------------------------------------------------------
% Title: Cartesian to Spherical Coordinate Converter
% Description: This function converts Cartesian coordinates (x, y, z) into 
%              spherical coordinates (r, theta, phi).
% Usage:
%   [r, theta, phi] = cart2sphCoord(x, y, z)
%   x, y, and z must be vectors of the same size.
%   theta and phi are calculated in degrees.
% By: Teros
%-------------------------------------------------------------------------

% Validate inputs: must be vectors
if ~isvector(x) || ~isvector(y) || ~isvector(z) 
    error('Inputs x, y, and z must be vectors.');
end

% Validate input size: must have the same number of elements
if ~(numel(x) == numel(y) && numel(y) == numel(z))
    error('Vectors must have the same number of elements.');
end

% Compute spherical coordinates
r = sqrt(x.^2 + y.^2 + z.^2);  % Radius
t = acos(z ./ r);              % Theta in radians
f = atan(y ./ x);              % Phi in radians
 
% Convert radians to degrees
t = rad2deg(t);
f = rad2deg(f);

end

% Test in Command Window:         
% [a, b, c] = cart2sphCoord(0, 2, 3)
% [a, b, c] = cart2sphCoord([10 20], [5 0], [-4 2])
