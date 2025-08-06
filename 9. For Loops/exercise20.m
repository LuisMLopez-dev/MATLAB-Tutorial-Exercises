% Plots for a second-order control system in the same figure
clear; % Clears the workspace
clc; % Clears the command window

% Obtains the x-axis range
x = input('Enter a vector for the range of the x-axis of the plot: ');

% Different values for the damping factor, zeta
zetaValues = [0.1 0.2 0.4 0.7 0.9];

y = zeros(length(zetaValues), length(x));

% Testing the function for different values of zeta

for k = 1:length(zetaValues)
    y(k, :) = 1 - ( 1 ./ sqrt(1 - zetaValues(k) .^ 2)) .* exp(-zetaValues(k) .* x) .* sin(sqrt(1 - zetaValues(k).^2) .* x + acos(zetaValues(k)));
end


% Creates the plot
plot(x, y);
xlabel('x in radians');
ylabel('y(x)'); 
title('y = 1 - (1 / √(1 - ζ²))e^{-ζx}sin(√(1 - ζ²)x + cos⁻¹(ζ))');
legend('ζ = 0.1', 'ζ = 0.2', 'ζ = 0.4', 'ζ = 0.7', 'ζ = 0.9');
grid on;
