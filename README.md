# r-programming-assignments


# Name
Abidur Rahman

# Course number 
LIS4370

# Brief description
Repository for R Programming Assignments


# Module # 2 Assignment
In this assignment, myMean() is a user-defined function designed to compute the mean of the numeric values contained in a vector passed as its parameter. We are provided with an erroneous function definition, which requires debugging and correction.
Here is the initial version of function: 
myMean <- function(assignment2) {
  return(sum(assignment) / length(someData))
}
and the given vector to test it on:
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

The initial call to myMean(assignment2) produced the first error, shown in [error 1.PNG.](https://github.com/abidurrahman2025/r-programming-assignments/blob/ce3882567a636b2d38ea2d84442d10a08e399ffc/error%201.PNG) The sum() function within the expression attempted to reference an object named assignment, which does not exist. The function’s parameter is correctly named assignment2, so this mismatch caused the error. To resolve this, the argument name inside the sum() call was changed to assignment2 to align with the function’s input parameter.

After this correction, a second error appeared as shown in [error 2.PNG](https://github.com/abidurrahman2025/r-programming-assignments/blob/bf2d1ad33d553dfa47814313090494779b4953a7/error%202.PNG), indicating a similar issue: the length() function referenced an undefined object named someData. This was also corrected by replacing someData with assignment2. In R, variable names inside a function must correspond exactly to the parameter names or objects defined within the function's scope. Consistency in naming ensures the function operates correctly on the provided input.

Once both issues were resolved, the function executed without error and returned the correct arithmetic mean of the assignment2 vector.

To validate the corrected myMean function, its output was compared with R’s built-in mean() function using myMean(assignment2)==mean(assignment2) and returned TRUE, confirming accuracy. Additionally, manual calculation verifies the result:: (16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)/12 = 19.25.  

The corrected code is uploaded as [Module # 2 Assignment.R](https://github.com/abidurrahman2025/r-programming-assignments/blob/bf2d1ad33d553dfa47814313090494779b4953a7/Module%20%23%202%20Assignment.R)
