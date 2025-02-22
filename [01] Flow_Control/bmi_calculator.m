%-------------------------------------------------------------------------
% Title: BMI Calculator
% Description: This script calculates the user's age based on their 
%             birth year and the current year. 
%               Additionally, it computes the Body Mass Index (BMI) using 
%             the given weight and height, and classifies the BMI according 
%             to standard categories.
% By: Teros
%-------------------------------------------------------------------------
clc, clear

% User input for birth year and current year
birth_year = input('Enter your birth year: ');
current_year = input('Enter the current year: ');
name = input('Enter your name: ', 's');

% Calculate and display age
fprintf('%s, if you have already had your birthday this year, then you are %d years old.\n', name, current_year - birth_year);

% User input for weight and height
weight = input('Enter your weight (kg): ');
height = input('Enter your height (m): ');

% Calculate BMI
bmi = weight / height^2;

% Display BMI result
fprintf('With a weight of %.1f kg and a height of %.2f m, your BMI is %.1f.\n', weight, height, bmi);
fprintf('%s, your BMI indicates that you have ', name);

% Classify BMI
if bmi > 40
    disp('Obesity Class III.');
elseif bmi > 35
    disp('Obesity Class II.');
elseif bmi > 30
    disp('Obesity Class I.');
elseif bmi > 25
    disp('Overweight.');
elseif bmi > 18.5
    disp('Normal Weight.');
else
    disp('Underweight.');
end

fprintf('\n'); % Ensures a proper line break at the end
