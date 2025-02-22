%-------------------------------------------------------------------------
% Title: Odd or Even?
% Description: This scipts keeps prompting the user for a number input
%              If given a positive number it will keep giving an awnser on
%            loop.
%              If given 0 or a negative number the script will end.
% By: Teros
%-------------------------------------------------------------------------
clc, clear

n = 1;

while n > 0
    n = input('Give me any integer (>0): ');

    if n < 1
        disp('Closing Program...')
        break
    end

    if rem(n,2)
        fprintf('%d is and odd number\n', n);
    else
        fprintf('%d is an even number\n', n);
    end
end