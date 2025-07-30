% Quadratic Equation Solver
% Ask user to enter the coefficients of a quadratic equation, Ax2 + Bx + C = 0 
% i.e. A, B, and C, and calculate the roots of the equation using the quadratic formula
% Prints out the equation and it's roots

clear; % Clears the workspace
clc; % Clears the command window

% Obtains the coefficients
A = input('Please enter the coefficient, A, of a quadratic equation: ');
B = input('Please enter the coefficient, B, of a quadratic equation: ');
C = input('Please enter the coefficient, C, of a quadratic equation: ');

% Calculates the roots
rootOne = (-B + sqrt(B^2 - 4 * A * C)) / (2 * A);
rootTwo = (-B - sqrt(B^2 - 4 * A * C)) / (2 * A);

% Obtains the real and imaginary parts of both roots
realRootOne = real(rootOne); 
imagRootOne = imag(rootOne);
realRootTwo = real(rootTwo);
imagRootTwo = imag(rootTwo);

% Prints the coefficients and the real and imaginary parts of the roots
fprintf('Roots of the quadratic equation %.2fx^2 + %.2fx + %.2f = 0 are %.4f + %.4fi and %.4f - %.4fi\n', ...
    A, B, C, realRootOne, imagRootOne, realRootTwo, imagRootTwo);