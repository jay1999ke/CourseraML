function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

temp1=theta(1);
temp2=theta(2);
temp3=theta(3);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    J1=0;
    J2=0;
    J3=0;
    for i=1:m
      hashn= theta(2)*X(i,2);
      hip=theta(1)+hashn;
      hay=hip-y(i);
      J1=J1+hay;
    endfor
    J1=J1/m;
    for j=1:m
      hashn2= theta(2)*X(j,2);
      hip2=theta(1)+hashn2;
      hay2=(hip2-y(j))*X(j,2);
      J2=J2+hay2;
    endfor
    J2=J2/m;
    for j=1:m
      hashn3= theta(3)*X(j,3);
      hip3=theta(3)+hashn2;
      hay3=(hip3-y(j))*X(j,3);
      J3=J3+hay3;
    endfor
    J3=J3/m;    
    
    temp1=theta(1)-alpha*J1;
    temp2=theta(2)-alpha*J2;
    temp3=theta(3)-alpha*J3;
    theta(1)=temp1;
    theta(2)=temp2;
    theta(3)=temp3;








    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
