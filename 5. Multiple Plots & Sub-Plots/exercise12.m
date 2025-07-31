% Plots for a second-order control system in the same figure using subplots
clear; % Clears the workspace
clc; % Clears the command window

% Obtains the x-axis range
x = input('Enter a vector for the range of the x-axis of the plot: ');

% Different values for the damping factor, zeta
z1 = 0.3;
z2 = 0.5;
z3 = 0.8;

% Testing the function for different values of zeta
yZeta1 = 1 - ( 1 / sqrt(1 - z1^ 2)) .* exp(-z1 .* x) .* sin(sqrt(1 - z1^2) .* x + acos(z1));
yZeta2 = 1 - ( 1 / sqrt(1 - z2^ 2)) .* exp(-z2 .* x) .* sin(sqrt(1 - z2^2) .* x + acos(z2)); 
yZeta3 = 1 - ( 1 / sqrt(1 - z3^ 2)) .* exp(-z3 .* x) .* sin(sqrt(1 - z3^2) .* x + acos(z3)); 

% Creates the subplot for yZeta1
subplot(2, 2, 1);
plot(x, yZeta1);
xlabel('x in radians');
ylabel('y_1(x)'); 
title('y_1 vs. x');
grid on;

% Creates the subplot for yZeta2
subplot(2, 2, 2);
plot(x, yZeta2);
xlabel('x in radians');
ylabel('y_2(x)'); 
title('y_2 vs. x');
grid on;

% Creates the subplot for yZeta3
subplot(2, 2, 3);
plot(x, yZeta3);
xlabel('x in radians');
ylabel('y_3(x)'); 
title('y_3 vs. x');
grid on;

% Creates the subplot for all functions of y(x)
subplot(2, 2, 4);
plot(x, yZeta1, 'r', x, yZeta2, 'b', x, yZeta3, 'g');
xlabel('x in radians');
ylabel('y_(x)'); 
title('y_1, y_2, y_3 vs. x');
grid on;