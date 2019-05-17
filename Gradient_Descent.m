function theta = Gradient_Descent(file, theta)

data = load(file);
X = data(:, 1); y = data(:, 2);
m = length(y);
X = [ones(m, 1), X];

iterations = 1500;
alpha = 0.01;

disp('Running Gradient Descent...\n')

J_history = zeros(iterations, 1);

for i = 1:iterations
    
    temp1 = theta(1) - alpha * (1/m) * sum(((X*theta) - y) .* X(:,1));
    
    temp2 = theta(2) - alpha * (1/m) * sum(((X*theta)-y) .* X(:,2));
    
    theta(1) = temp1;
    theta(2) = temp2;
    
    
    
    J_history(i) = Cost_Function(file, theta);


end

end



