%-------------------------------------------------------------------------
% Title: Dice Rolling Simulation
% Description: This script simulates rolling a fair six-sided die. 
%              The rolling continues until the dice value is lower 
%              than the number of rolls performed.
% By: Teros
%-------------------------------------------------------------------------

clc, clear

dice_value = 0;  % Current dice roll value
roll_count = 0;  % Number of rolls

% Loop until the dice value is less than the roll count
while dice_value >= roll_count
    dice_value = randi(6, 1); % Generate a random number between 1 and 6
    roll_count = roll_count + 1;
    fprintf('Roll No. %d <= %d\n', roll_count, dice_value);
end

disp('End of script');
