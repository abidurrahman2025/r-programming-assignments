# r-programming-assignments


# Name
Abidur Rahman

# Course number 
LIS4370

# Brief description
Repository for R Programming Assignments


# Module # 2 Assignment
In this assignment, 'myMean()' is a user-defined function that is meant to print the mean of all the numbers in a vector provided as it’s parameter. We are given an erroneous definition of the function that we need debug and provide a corrected version.
Here is the initial version of function: 
myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
}
and the given vector to test it on:
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)


The initial call to myMean(assignment2) produced the first error, shown in error1.PNG. The sum() function within the expression attempted to reference an object named assignment, which does not exist. The function’s parameter is correctly named assignment2, so this mismatch caused the error. To resolve this, the argument name inside the sum() call was changed to assignment2 to align with the function’s input parameter.

After this correction, a second error appeared (error2.PNG), indicating a similar issue: the length() function referenced an undefined object named someData. This was also corrected by replacing someData with assignment2. In R, variable names inside a function must correspond exactly to the parameter names or objects defined within the function's scope. Consistency in naming ensures the function operates correctly on the provided input.

Once both issues were resolved, the function executed without error and returned the correct arithmetic mean of the assignment2 vector.

To validate the corrected myMean function, its output was compared with R’s built-in mean() function using myMean(assignment2)==mean(assignment2) and returned TRUE, confirming accuracy. Additionally, manual calculation verifies the result:: (16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)/12 = 19.25.  
