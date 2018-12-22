function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

for p = 1:m
  hashn2=theta(3)*((X(p,3))**1);
  hashn= theta(2)*X(p,2);
  hip=theta(1)+hashn+hashn2;
  hay=hip-y(p);
  J=J+hay**2;
endfor
 
J=J/(2*m);



% =========================================================================

end
