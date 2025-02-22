%-------------------------------------------------------------------------
% Title: Geometric Area Calculator
% Description: This script calculates the area of different geometric shapes 
%              (circle, rectangle, and regular hexagon) based on user input.
%              The user selects a shape from a menu and provides the necessary 
%              dimensions. The program can be repeated until the user decides 
%              to exit.
% By: Teros
%-------------------------------------------------------------------------

while true
    clc, clear

    % Display menu
    disp('-------------- Menu --------------');
    fprintf('1. Circle\n2. Rectangle\n3. Regular Hexagon\n');
    drawLine();
    option = input('Choose an option: ');
    drawLine();

    switch option
        case 1 % Circle
            disp('To calculate the area of a circle,');
            r = input('enter the radius: ');
            area = pi * r^2;
            drawLine();
            fprintf('A = pi * r^2, with r = %.2f\n', r);
            fprintf('A = %.2f m^2\n', area);
            drawLine();
        case 2 % Rectangle
            disp('To calculate the area of a rectangle,');
            b = input('enter the base: ');
            h = input('and the height: ');
            area = b * h;
            drawLine();
            fprintf('A = b * h, with b = %.2f and h = %.2f\n', b, h);
            fprintf('A = %.2f m^2\n', area);
            drawLine();
        case 3 % Regular Hexagon
            disp('To calculate the area of a regular hexagon,');
            c = input('enter the side length: ');
            area = (3 * sqrt(3) / 2) * c^2;
            drawLine();
            fprintf('A = 3 * sqrt(3) / 2 * c^2, with c = %.2f\n', c);
            fprintf('A = %.2f m^2\n', area);
            drawLine();
        otherwise
            disp('     *** Invalid Option! ***');
            drawLine();
    end

    % Ask if the user wants to repeat
    repeat = input('Repeat the program? [y/n]: ', 's'); % 's' ensures string input
    if repeat ~= 'y' % Check if user input is different from 'y'
        drawLine();
        disp('Program terminated')
        break;
    end
end

% Function to print a separator line
function drawLine()
    disp('----------------------------------');
end
