clc; clear; close all
syms x y z lambda

% Definir função Lagrange
V = 8*x*y*z;
phi = x^2/2^2 + y^2/3^2 + z^2/4^2 - 1;
L = V + lambda * phi;

% Derivadas parciais
eqs = [diff(L, x)==0, diff(L, y)==0, diff(L, z)==0, diff(L, lambda)==0];

% Resolver sistema
sol = solve(eqs, [x, y, z, lambda], 'Real', true);
xv = double(sol.x); yv = double(sol.y); zv = double(sol.z);
vol = 8 .* xv .* yv .* zv;


fprintf('Volume máximo do paralelepípedo: %.2f m^3\n', max(vol));
