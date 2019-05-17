function visualize_cost_function(file, theta)
fprintf('Visualizing J(theta_0, theat_1).....\n')

% Grid over we will calculate J
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);

% Initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
for i = 1 : length(theta0_vals)
    for j = 1 : length(theta1_vals)
        t = [theta0_vals(i); theta1_vals(j)];
        J_vals(i, j) = Cost_Function(file, t);
    end
end


% Dimensions of matrix must be equal
% Surface plot
J_vals = J_vals';
figure;
surf(theta0_vals, theta1_vals, J_vals);
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
% -3.6303 ; 1.1664
figure;
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
theta = Gradient_Descent(file, theta);
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);

end

