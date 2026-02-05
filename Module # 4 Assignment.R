# Create the dataset
Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

# Create the Data Frame
hospital_data <- data.frame(Freq, bloodp, first, second, finaldecision)


# Set up a side-by-side plotting area (1 row, 2 columns)
par(mfrow = c(1, 2))

# Create Boxplot: Blood Pressure vs Emergency Decision
boxplot(bloodp ~ finaldecision, data = hospital_data,
        main = "BP vs. Final Decision",
        xlab = "Decision (0=Low, 1=High)",
        ylab = "Blood Pressure",
        col = c("lightblue", "salmon"))

# Create Histogram: Frequency of Visits
hist(hospital_data$Freq, 
     main = "Distribution of Visit Freq",
     xlab = "Visits in last 12 Months",
     col = "lightgreen",
     breaks = 5)

# Reset plotting parameters to default
par(mfrow = c(1, 1))


# Set up the plotting area (4 boxplot above and 4 histograms below) for side-by-side visualizations
par(mfrow = c(2, 4), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))

# BOXPLOTS
# Blood pressure by first assessment
boxplot(bloodp ~ first, data = hospital_data, 
        main = "BP by First Assessment",
        xlab = "First Assessment", ylab = "Blood Pressure",
        col = c("lightgreen", "lightcoral"), ylim = c(0, 250), na.rm = T)

# Blood pressure by second assessment
boxplot(bloodp ~ second, data = hospital_data,
        main = "BP by Second Assessment",
        xlab = "Second Assessment", ylab = "Blood Pressure",
        col = c("lightblue", "lightyellow"), ylim = c(0, 250))

# Blood pressure by final decision
boxplot(bloodp ~ finaldecision, data = hospital_data,
        main = "BP by Final Decision",
        xlab = "Final Decision", ylab = "Blood Pressure",
        col = c("lightgray", "lightpink"), ylim = c(0, 250))

# Frequency of visits
boxplot(hospital_data$Freq, main = "Frequency of Visits",
        ylab = "Visit Frequency", col = "lightcyan")

# HISTOGRAMS
# Blood pressure histogram
hist(hospital_data$bloodp, main = "Blood Pressure Distribution",
     xlab = "Blood Pressure", ylab = "Count",
     col = "lightblue", border = "black", breaks = 5)

# First assessment distribution (barplot for categorical)
hist(hospital_data$first, main = "First Assessment Distribution",
     xlab = "Assessment", ylab = "Count",
     col = "lightgreen", border = "lightcoral", breaks = 5)

# Second assessment distribution
hist(hospital_data$second, main = "Second Assessment Distribution",
     xlab = "Assessment", ylab = "Count",
     col = "lightblue", border = "lightyellow", breaks = 5)

# Final decision distribution
hist(hospital_data$finaldecision, main = "Final Decision Distribution",
     xlab = "Decision", ylab = "Count",
     col = "lightgray", border = "lightpink", breaks = 5)

# Add overall title
title("Analysis of Patient Data: Blood Pressure & Medical Assessments", outer = TRUE)

# Reset plotting parameters
par(mfrow = c(1, 1))
