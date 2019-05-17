function J = Cost_Function(file, theta)
% Cost Function parametres
data = load(file);
X = data(:, 1); y = data(:, 2);
m = length(y);
X = [ones(m, 1), X];
%theta = zeros(2, 1);



% Computing cost function
J = 0;
h = X * theta;
sqr_error = (h - y).^2;
% disp('The cost function is: ')
J = 1 / (2*m) * sum(sqr_error);

end