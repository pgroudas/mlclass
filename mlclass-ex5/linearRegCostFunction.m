function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

T = X * theta - y;
J = (1 /(2*m)) * (T'*T);

theta_multiplier = eye(length(theta));
theta_multiplier(1,1) = 0;

regularized_theta = theta_multiplier * theta;
regularization_term = (1/(2*m))*(lambda) * (regularized_theta' * regularized_theta);

J = J + regularization_term;
grad = (1 / m) * (X'* (X * theta - y)) +(lambda / m) * (theta_multiplier * theta);

% =========================================================================

grad = grad(:);

end
