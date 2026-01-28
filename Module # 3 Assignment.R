# Assignment # 3
# Analysis of 2016 Presidential Candidate Political Poll Results
# This data set is based on the presidential election during 2016, but is made-up and does not reflect what really happened in the election

# My Task: compute per-candidate averages across two polls and calculate the overall mean across all candidates–poll cells.


# Define candidate names and corresponding poll results
name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
abc_results <- c(4, 62, 51, 21, 2, 14, 15)
cbs_results <- c(12, 75, 43, 19, 1, 21, 19)

# Consolidate results into a primary data frame
poll_results <- data.frame(
  name,abc_results,cbs_results
)

# View raw consolidated data
print(poll_results)

# Calculate the mean performance score for each candidate across all polls
poll_results$average_score <- rowMeans(poll_results[,2:3])

# View updated results with calculated averages
print(poll_results)

# Compute the global mean across all poll data points
overall_mean <- mean(as.matrix(poll_results[,2:3]))

# Display final global average
cat("The overall mean across all polls is:", overall_mean, "\n")

