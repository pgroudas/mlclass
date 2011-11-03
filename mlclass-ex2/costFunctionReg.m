function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

theta_multiplier = eye(length(theta));
theta_multiplier(1,1) = 0;

regularized_theta = theta_multiplier * theta;

J =  (1/m) * (log(sigmoid(theta'*X'))*(-y) \
     - log(1 - sigmoid(theta'*X'))*(1 - y)) \
     + (lambda / (2*m)) *(regularized_theta' * regularized_theta);

grad = (1/m) * (((sigmoid(theta'*X')) - y')*X)';
grad = grad + (lambda / m) * (theta_multiplier * theta);






% =============================================================

end
