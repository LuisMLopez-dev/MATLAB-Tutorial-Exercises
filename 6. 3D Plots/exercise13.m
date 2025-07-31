% Plots for a second-order control system in the same figure
clear; % Clears the workspace
clc; % Clears the command window

% X-axis range vector
x = 0:0.01:14;

% Different values for the damping factor, zeta, as a vector
zeta = [0.1 0.2 0.4 0.7 0.9];

% Creating matrices X and zeta from vectors x and zeta
[X, Zeta] = meshgrid(x, zeta);

% Testing the function for different values of zeta using X and Zeta
yFunc = 1 - ( 1 ./ sqrt(1 - Zeta .^ 2)) .* exp(-Zeta .* X) .* sin(sqrt(1 - Zeta .^ 2) .* X + acos(Zeta));

% Creates the plot
mesh(X, Zeta, yFunc);
colormap('parula');
xlabel('x in radians');
ylabel('damping ratio ζ');
zlabel('y(t)');
title('y = 1 - (1 / √(1 - ζ²))e^{-ζx}sin(√(1 - ζ²)x + cos⁻¹(ζ))');
grid on;