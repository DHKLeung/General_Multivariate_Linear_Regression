# General_Multivariate_Linear_Regression
A general multivariate linear regression based on "train_data.csv" and "test_case.csv"

Usage:

This code requires 2 csv file or file that content as if csv file.

One is training data and one is test data.

Default setting of training data filename and test data file name are 'train_data.csv' and 'test_data.csv' respectively. Can be altered in line 34 and 35.

Default setting of Learning Rate(alpha) and Epoch are 0.01 and 500 respectively. Can be altered in line 51 and 52.

Example:

    Student A: Chinese 100, English 100, Maths 60, Overall 80
    Student B: Chinese 60, English 60, Maths 60, Overall 60
    Student C: Chinese 100, English 0, Maths 0, Overall 33

Then the file should be written like this:

    100,100,60,80
    60,60,60,60
    100,0,0,33

in this case the first three columns represent three features,

while the last column is the label.

here aren't limitations on the amount of feature. This code will

automatically deal with multivariate features.

Example "test_data.csv" and "train_data.csv" has been put on the GitHub repository.
