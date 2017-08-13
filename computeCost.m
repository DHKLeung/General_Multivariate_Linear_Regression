function cost = computeCost(X, y, theta)

%   Initialize value
m = length(y);

%   Compute the cost
cost = (1 / (2 * m)) * sum((X * theta - y) .^ 2);

end