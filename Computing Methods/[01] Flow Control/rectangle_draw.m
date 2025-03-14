%-------------------------------------------------------------------------
% Title: Rectangle Drawing Script
% Description: This script prompts the user to enter the dimensions of a 
%              rectangle within a valid range. It then prints the rectangle 
%              using asterisks (*) based on the given width and height.
% By: Teros
%-------------------------------------------------------------------------

clc, clear

fprintf('To draw the rectangle, please enter:\n');

% Get valid width input
width = input('Width [5-40]: ');
while width < 5 || width > 40
    disp('ERROR: Invalid width!');
    width = input('Width [5-40]: ');
end

% Get valid height input
height = input('Height [3-10]: ');
while height < 3 || height > 10
    disp('ERROR: Invalid height!');
    height = input('Height [3-10]: ');
end

% Draw the rectangle
for i = 1:height
    for j = 1:width
        fprintf('*');
    end
    fprintf('\n'); % Move to the next line after each row
end
