# 1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

# a) Find A + B
A + B
# b) Find A - B
A - B
# 2. Using the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.
diag(c(4,1,2,3),4)
# 3. Generate the following matrix:
   
#   ## [,1] [,2] [,3] [,4] [,5]
#   ## [1,] 3 1 1 1 1
#   ## [2,] 2 3 0 0 0
#   ## [3,] 2 0 3 0 0
#   ## [4,] 2 0 0 3 0
#   ## [5,] 2 0 0 0 3
#   Hint: You can use the command diag() to build it.

M <- diag(3, 5)          # 5x5 matrix with 3 on diagonal
M[1, 2:5] <- 1           # set first row, columns 2-5 to 1
M[2:5, 1] <- 2           # set first column, rows 2-5 to 2
M
