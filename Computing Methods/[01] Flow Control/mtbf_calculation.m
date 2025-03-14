%-------------------------------------------------------------------------
% Title: System MTBF Calculation
% Description: This script calculates the Mean Time Between Failures (MTBF)
%              for a system composed of multiple subsystems. The user 
%              inputs the MTBF of each subsystem, and the script computes 
%              the overall system MTBF.
% By: Teros
%-------------------------------------------------------------------------

clc, clear

drawLine();
n = input('Enter the number of subsystems: ');

% Validation
while n < 1 || n > 10
    drawLine();
    disp('Invalid input!');
    n = input('Enter the number of subsystems (max 10): ');
end

drawLine();

i = 1;
mtbf = 0;

while i <= n
    hours = input(['MTBF of subsystem ', num2str(i), ' (in hours): ']);
    
    % Validation
    while hours <= 0
        drawLine();
        disp('ERROR: The number of hours must be positive!');
        drawLine();
        hours = input(['Enter the MTBF of subsystem ', num2str(i), ' again: ']);
    end

    i = i + 1;
    mtbf = mtbf + (1 / hours);
end

mtbf_final = 1 / mtbf;

fprintf('The MTBF of the entire system is %.2f hours\n', mtbf_final);

% Function to draw a separator line
function drawLine()
    disp('--------------------------------------------');
end
