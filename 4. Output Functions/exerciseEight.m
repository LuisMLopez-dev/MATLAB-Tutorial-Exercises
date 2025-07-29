% Calculating the equivalent value of resistors if all resistances are in series and if all resistances are in parallel

clc; % Clears the command window of text
resistorValues = input('Enter the resistance values of the resistors in vector format: ');

seriesReq = sum(resistorValues);
parallelReq = 1 / sum(1 ./ resistorValues);

% This string is too long, so it is split up and auto-formatted by MATLAB
fprintf(['If all the resistors are connected in series, the equivalent resistor will be %.2f\n' ...
    'and if all the resistors are connected in parallel, the equivalent resistor will be %.2f\n'], seriesReq, parallelReq);