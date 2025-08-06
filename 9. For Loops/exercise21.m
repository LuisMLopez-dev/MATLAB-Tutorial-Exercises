% Altering values in one matrix, and storing it in a new matrix
clear; % Clears the workspace
clc; % Clears the command window

matX = input('Enter a matrix: '); % Obtains a matrix from the user
sizeOfMatX = size(matX); % Stores the size of the user's matrix
matY = zeros(sizeOfMatX); % Creates a matrix of the same size to store the output

% Loops through the rows
for i = 1:sizeOfMatX(1) 
    % Loops through the columns
    for j = 1: sizeOfMatX(2) 
        % If the current element is between 0 and 20
        if matX(i, j) > -1 && matX(i, j) < 21 
            matY(i, j) = 4 * sind(matX(i, j)) * cosd(3 * matX(i, j));
        % If the current element is between 21 and 70
        elseif matX(i, j) > 20 && matX(i, j) < 71 
            matY(i, j) = 5 * sind(6 * matX(i,j)) * cosd(5 * matX(i, j));
        else
            matY(i, j) = 10 * sind(matX(i, j));
        end
    end
end

disp(matY);