# General_Multivariate_Linear_Regression
A general multivariate linear regression based on "train_data.csv" and "test_case.csv"


   Usage:
   
       This code requires 2 csv file or file that content as if csv file.
       
       "test_data.csv" and "train_data.csv"
       
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
       There aren't limitations on the amount of feature. This code will
       automatically deal with multivariate features.

       Example "test_data.csv" and "train_data.csv" has been put on the
       GitHub repository.
