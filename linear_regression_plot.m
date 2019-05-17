function linear_regression_plot(file, theta)

[J,X, y] = Cost_Function(file, theta)

theta = Gradient_Descent(file, theta)

Load_And_Plot(file);

hold on;
plot(X(:,2), X*theta, '-', 'MarkerSize', 10, 'LineWidth', 2);
legend('Training Data', 'Linear Regression');
hold off;

% Predictions on profits in area of 35K and 70K people.
predict1 = [1, 3.5] * theta

predict2 = [1, 7] * theta

fprintf('The profit for area of 35K people is %f\n', predict1*10000)

fprintf('The profit for area of 70K people is %f\n', predict2*10000)

end
