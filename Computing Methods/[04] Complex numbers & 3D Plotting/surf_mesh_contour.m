%-------------------------------------------------------------------------
% Title: Different Graphical Representations
% Description: This script is a compilation of exercises that require the
%              use of mesh, surf and contour funcions.
%              - Creates different figures each with 3 subplots for the 
%              different case representations.
%              - Created a function for plot configuration
% By: Teros
%-------------------------------------------------------------------------
clc; clear; close all;

%% 1
[x,y] = meshgrid(-3:0.5:3, -3:0.5:3);
z= (1-(x.^2+y.^2)).*exp(- (x.^2+y.^2)/3);
plot_graphs(x,y,z);

%% 2
[x,y] = meshgrid(-2.1:0.5:2.1,-6:0.5:6);
z = 80*y.^2.*exp(-x.^2-0.3*y.^2);
plot_graphs(x,y,z);

%% 3
[x,y] = meshgrid(0:1:150, 0:1:100);
z = x.*cos(2*pi.*x/50).*cos(2*pi.*y/50);
plot_graphs(x,y,z);

%% 4
[x,y] = meshgrid(-5:0.5:5, -5:0.5:5);
z = abs(x+y).*sin(x/2)*cos(y)./(x-20);
plot_graphs(x,y,z);

%% 5 
[x,y] = meshgrid(-10:0.5:10, -6:0.5:6);
z = exp(-x.*y/25).*sin(0.5*x-y);
plot_graphs(x,y,z);

function plot_graphs(x,y,z)
figure;
subplot(1,3,1); % left side
surf(x,y,z); 
xlabel('xx'); ylabel('yy'); zlabel('zz');
title('Surface Representation'); 

subplot(1,3,2);
mesh(x,y,z); 
xlabel('xx'); ylabel('yy');
title('Mesh Representation'); 

subplot(1,3,3); % right side
contour(x,y,z, 'ShowText','on'); % value identification
xlabel('xx'); ylabel('yy');
title('Countour Representation'); 
grid on; % grid creation
end
