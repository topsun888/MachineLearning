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
%Compute the cost
temp = X*theta;
J = sum((temp-y).^2)/2/m + lambda/2/m * sum(theta(2:end,:).^2);
%Compute the gradient
n = size(grad,1);%the number of theta
for j = 1 : n
    grad(j) = sum((temp-y).*X(:,j))/m;
    if(j>1)
        grad(j) = grad(j) + lambda/m*theta(j);
    end;
end;
    









% =========================================================================

grad = grad(:);

end
