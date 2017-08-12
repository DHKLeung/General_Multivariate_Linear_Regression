%%  General Multivariate Linear Regression
%   Programed by Daniel H. Leung 12/08/2017 (DD/MM/YYYY)

%%  Initialization

clear;
close all;
clc;

fprintf('Initialized\n');

%%	Load Data

train_data = load('train_data.csv');
X = [ones(length(train_data), 1), train_data(:, 1:(size(train_data, 2)) - 1)];
y = train_data(:, size(train_data, 2));

fprintf('Data loaded\n');

%%  Feature Scaling

[X, mu, stddev] = featureScaling(X);

fprintf('Feature scaled\n');

%%  Gradient Descent

%   Set learning rate(alpha) and epoch
alpha = 0.01;
epoch = 500;

%   Initialize theta and Run Gradient Descent
theta = zeros(size(X, 2), 1);
[theta, costHistory] = gradientDescent(X, y, theta, alpha, epoch);

fprintf('Computed Gradient Descent\n');

%%  Plot graph and Display Theta

%   Plot graph
figure;
plot(1:numel(costHistory), costHistory, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost');

%   Display results
fprintf('Theta computed from Gradient Descent:\n\n');
fprintf('%f\n', theta);
fprintf('\n');

%%   Compare to testcase

testcase = load('test_data.csv');
X_Testcase = [ones(length(testcase), 1), testcase(:, 1:(size(testcase, 2) - 1))];
y_Testcase = testcase(:, size(testcase, 2));
for i = 2:size(X_Testcase, 2)
   X_Testcase(:, i) = (X_Testcase(:, i) - mu(i - 1)) / stddev(i - 1);
end
test_result = X_Testcase * theta;
MeanAbsoluteError = abs(test_result - y_Testcase);
totalMeanAbsoluteError = sum(MeanAbsoluteError) / length(y_Testcase);
fprintf('Tested by testcase:\n');
fprintf('Mean Absolute Error: %f\n\n', totalMeanAbsoluteError);
