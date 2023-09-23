function [root, iterations] = newton_raphson(poly, initial_guess, max_iterations, tolerance)
% Implementation of Newton-Raphson method for finding roots of a polynomial function
% Input arguments:
%   - poly: a vector representing the coefficients of a polynomial function, in descending order of degree
%   - initial_guess: the initial guess for the root
%   - max_iterations: maximum number of iterations to perform
%   - tolerance: the tolerance for the root value
% Output arguments:
%   - root: the root value obtained by the method
%   - iterations: the number of iterations performed

% Check input arguments
if nargin < 4
    tolerance = 1e-6; % default tolerance
end
if nargin < 3
    max_iterations = 100; % default maximum number of iterations
end

% Define function and its derivative
f = @(x) polyval(poly, x); % evaluate polynomial
df = @(x) polyval(polyder(poly), x); % evaluate derivative of polynomial

% Initialize variables
root = initial_guess;
iterations = 0;

% Iterate until convergence or maximum iterations reached
while iterations < max_iterations
    iterations = iterations + 1;
    delta = - f(root) / df(root);
    root = root + delta;
    if abs(delta) < tolerance
        break
    end
end

% Check for convergence
if iterations >= max_iterations
    warning('Newton-Raphson method did not converge within the maximum number of iterations.')
end


% Example usage
poly = [1 -3 2]; % coefficients of polynomial x^2 - 3x + 2
initial_guess = 1.5;
[root, iterations] = nyoba(poly, 1.5, 1000, 1e-6);
fprintf('Root: %f\nIterations: %d\n', root, iterations);