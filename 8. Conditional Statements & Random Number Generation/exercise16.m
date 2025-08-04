clear; % Clears the workspace
clc; % Clears the command window

resistorValues = input('Enter a vector of resistors to calculate series and parallel equivalents: ');

% If any resistors are negative
if any(resistorValues < 0)
    fprintf('Resistors cannot be negative');
else
    rEQSeries = sum(resistorValues);
    rEQParallel = 1 ./ sum(1 ./ resistorValues);
    fprintf('Series Equivalent Resistance: %.2f\n', rEQSeries);
    fprintf('Parallel Equvalent Resistance: %.2f\n', rEQParallel);
end
