% Plots for a second-order control system in the same figure
clear; % Clears the workspace
clc; % Clears the command window

% Obtains the x-axis range
x = input('Enter a vector for the range of the x-axis of the plot: ');

% Different values for the damping factor, zeta
z1 = 0.1;
z2 = 0.2;
z3 = 0.4;
z4 = 0.7;
z5 = 0.9;

% Testing the function for different values of zeta
yZeta1 = 1 - ( 1 / sqrt(1 - z1^ 2)) .* exp(-z1 .* x) .* sin(sqrt(1 - z1^2) .* x + acos(z1));
yZeta2 = 1 - ( 1 / sqrt(1 - z2^ 2)) .* exp(-z2 .* x) .* sin(sqrt(1 - z2^2) .* x + acos(z2)); 
yZeta3 = 1 - ( 1 / sqrt(1 - z3^ 2)) .* exp(-z3 .* x) .* sin(sqrt(1 - z3^2) .* x + acos(z3)); 
yZeta4 = 1 - ( 1 / sqrt(1 - z4^ 2)) .* exp(-z4 .* x) .* sin(sqrt(1 - z4^2) .* x + acos(z4)); 
yZeta5 = 1 - ( 1 / sqrt(1 - z5^ 2)) .* exp(-z5 .* x) .* sin(sqrt(1 - z5^2) .* x + acos(z5));

% Creates the plot
plot(x, yZeta1, 'r', x, yZeta2, 'b', x, yZeta3, 'c', x, yZeta4, 'g', x, yZeta5, 'k');
xlabel('x in radians');
ylabel('y(x)'); 
title('y = 1 - (1 / √(1 - ζ²))e^{-ζx}sin(√(1 - ζ²)x + cos⁻¹(ζ))');
grid on;
legend('ζ = 0.1', 'ζ = 0.2', 'ζ = 0.4', 'ζ = 0.7', 'ζ = 0.9');