function [s, t, u] = exercise15(x, y, z)
% Solves three equations not given by the tutorial
% The PDF given had issues displaying some text
% Below are three random equations that demonstrate the same principles of this exercise
% s = x^2 + y^2 + z^2
% t = e^(x + y) / (1 + z)
% u = log(1 + xyz)

s = x.^2 + y.^2 + z.^2;
t = exp(x + y) ./ (1+ z);
u = log(1 + x .* y .* z);