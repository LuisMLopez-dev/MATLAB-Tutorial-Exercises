%Solving a system of linear equations using inversion and input functions
A = input('Enter the coeffcient matrix A: ');
C = input('Enter the constant vector column C: ');

XP = inv(A) * C;
altXP = A \ C; % Alternative way to solve that can be faster and more precise

disp('Using inversion: ');
disp(XP);
disp('Using left matrix division: ');
disp(altXP);