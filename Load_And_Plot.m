function [X, y] = Load_And_Plot(file)
data = load(file);
X = data(:, 1); y = data(:, 2);
m = length(y);
fprintf('The number of training examples: %d\n', m);
figure('Name', 'Plotting Population/Profit Data');
plot(X, y, 'x', 'MarkerSize', 10);
xlabel('Population of City in 10,000s');
ylabel('Profit in $10,000s');
title('The ratio of Population/Profit');

end

