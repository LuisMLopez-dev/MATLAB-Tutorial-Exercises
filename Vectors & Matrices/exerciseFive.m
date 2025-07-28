% Solving a set of linear equations with inv()
% 
% 5x + 7y = 10
% 4x + 2y = 3

A = [5, 7; 4, 2];
B = [10; 3];
C = inv(A) * B;
D = A \ B; % Alternative way to write the line above that may be faster, and less prone to rounding errors
