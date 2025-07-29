% Quadratic Equation Solver
%
% Instructions: 
% Ask user to enter the coefficients of a quadratic equation, Ax2 + Bx + C = 0 
% i.e. A, B, and C, and calculate the roots of the equation using the quadratic formula

A = input('Please enter the coefficient, A, of a quadratic equation: ');
B = input('Please enter the coefficient, B, of a quadratic equation: ');
C = input('Please enter the coefficient, C, of a quadratic equation: ');

x1 = (-B + sqrt(B^2 - 4 * A * C)) / (2 * A);
x2 = (-B - sqrt(B^2 - 4 * A * C)) / (2 * A);