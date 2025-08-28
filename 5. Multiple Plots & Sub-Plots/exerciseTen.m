% Plot two functions with user's vector x in two different figures
clear; % Clears the workspace
clc; % Clears the command window

x = input('Enter a vector x to evaluate and plot f1(x) and f2(x): ');

% Two functions given by the instructions
f1 = 2 .* x.^2 .* cos(6 .* x);
f2 = (10 + 2 .* sin(2000 .* pi .* x)) .* sin(107000 .* pi .* x);

% Creates and plots figure 1
figure(1); 
plot(x, f1), xlabel('x'), ylabel('f_1(x)'), title('f_1(x) = 2x^2cos(6x)'), grid;

% Creates and plots figure 2
figure(2);

plot(x, f2, 'm'), xlabel('x'), ylabel('f_2(x)'), title('f_2(x) = (10 + 2sin(2000\pix))sin(107000\pix)'), grid;
