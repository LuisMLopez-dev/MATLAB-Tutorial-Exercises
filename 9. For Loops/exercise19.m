% For loop to generate a multiplication table for any integer
clear; % Clears the workspace
clc; % Clears the command window

userInt = input('Enter the number for which you want to create the multiplication table: ');
userTableLength = input('Enter the number up to which the multiplication table is required: ');

for k = 1:userTableLength % Loops from 1 to the length of the multiplication table by increments of 1
    product = userInt * k;
    fprintf('%d X %d = %d\n', userInt, k, product);
end