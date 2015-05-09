function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

m = length(y)
    for i = 1 : num_iters
        #theta_0 = theta( 1 , 1 ) - alpha * sum( X * theta - y ) / m
        #theta_1 = theta( 2 , 1 ) - alpha * sum( ( X * theta - y )' * X( : , 2 ) ) / m
        theta = theta' - alpha * ( ( X * theta - y )' * X ) / m;
        theta = theta';
        % theta
        % ============================================================

        % Save the cost J in every iteration    
        J_history(i, 1) = computeCost(X, y, theta);
    endfor
    J_history
    %figure;
    %plot( 1 : num_iters, J_history, 'r');
    %xlabel('itetations')
    %ylabel('cost')
    %print -dpng 'cost-plot-alpha_0.03.png';
    %pause;
end
