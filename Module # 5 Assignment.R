# Find the value of inverse of a matrix, determinant of a matrix by using the following values:
# A=matrix(1:100, nrow=10)
# B=matrix(1:1000, nrow=10)

A <- matrix(1:100,  nrow = 10)
B <- matrix(1:1000, nrow = 10)

dim(A)  # Returns: [1] 10 10, so square
dim(B)  # Returns: [1] 10 100, so not square


invA <- tryCatch(solve(A), error = function(e) e$message) # Inverse of A
detA <- tryCatch(det(A),   error = function(e) e$message) # Determinant of A

invA  # Returns error: matrix A is singular (determinant = 0), so inverse doesn't exist
detA  # Returns: 0 (singular matrix has zero determinant)


invB <- tryCatch(solve(B), error = function(e) e)  # Inverse of B (error object)
detB <- tryCatch(det(B),   error = function(e) e) # Determinant of B (error object)

invB  # Returns error: B must be square for inversion (10x100 is non-square)
detB  # Returns error: B must be square for determinant calculation
