function z = exercise14(magnitude, angleDegrees)

% Takes in the magnitude and angle in degrees
% Converts the angle to Radians
% Converts the polar form to Cartesian form using pol2cart
% Displays it in x + yi format

angleRadians = deg2rad(angleDegrees);

[x, y] = pol2cart(angleRadians, magnitude);

z = complex(x, y);