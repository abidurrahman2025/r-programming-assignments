tukey.outlier <- function(x, k = 1.5) {
  q1 <- quantile(x, 0.25, na.rm = TRUE)
  q3 <- quantile(x, 0.75, na.rm = TRUE)
  iqr <- q3 - q1
  x < (q1 - k * iqr) | x > (q3 + k * iqr)
}
corrected_tukey <- function(x) {
  outliers <- array(TRUE, dim = dim(x))
  for (j in seq_len(ncol(x))) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  outlier.vec <- logical(nrow(x))
  for (i in seq_len(nrow(x))) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  outlier.vec
}
set.seed(123)
test_mat <- matrix(rnorm(50), nrow = 10)
tukey_multiple(test_mat)
corrected_tukey(test_mat)

enhanced_corrected_tukey <- function(x) {
  # Check that x is a matrix
  if (!is.matrix(x)) stop("Input must be a matrix.")
  
  # Check that x is numeric
  if (!is.numeric(x)) stop("Matrix must be numeric.")
  
  # Optional: check for any non‑finite values (NA, NaN, Inf)
  if (any(!is.finite(x))) warning("Non‑finite values detected; results may be unreliable.")
  
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)) {
    outliers[, j] <- outliers[, j] & tukey.outlier(x[, j])
  }
  outlier.vec <- logical(nrow(x))  # more direct than vector("logical", ...)
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i, ])
  }
  return(outlier.vec)
}

enhanced_corrected_tukey(test_mat)