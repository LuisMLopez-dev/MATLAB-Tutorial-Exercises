% Generates a random number between 1 and 10
% Asks the user to guess it
% Counts the amount of attempts taken
clear; % Clears the workspace
clc; % Clears the command window

target = randi([1, 10]); % Generates a number between 1 and 10
attempts = 0; % Stores the attempts taken to guess the number

userGuess = input('Please guess an integer between 1 and 10: ');
attempts = attempts + 1; % First guess

while userGuess ~= target
    userGuess = input('Your guess is incorrect. Please try again: ');
    attempts = attempts + 1;
end

fprintf('You guess it correctly in %d attempts\n', attempts);