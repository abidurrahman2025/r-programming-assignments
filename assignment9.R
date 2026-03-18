# Load the mtcars dataset
data("mtcars", package = "datasets")
head(mtcars)

# Scatter plot
plot(mtcars$wt, mtcars$mpg,
     main = "Base: mpg vs. wt",
     xlab = "Weight (lbs)",
     ylab = "Fuel Consumption (mpg)")

# Histogram
hist(mtcars$hp,
     main = "Base: Distribution of hp",
     xlab = "Horsepower")


library(lattice)

# Conditional scatter plot (small multiples)
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: mpg vs. wt by cylinders")

# Box-and-whisker plot
bwplot(hp ~ factor(cyl),
       data = mtcars,
       main = "Lattice: hp by cylinders")


library(ggplot2)

# Scatter plot with smoothing
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: mpg vs. wt with trend by cylinders")

# Faceted histogram
ggplot(mtcars, aes(hp)) +
  geom_histogram(binwidth = 20) +
  facet_wrap(~ cyl) +
  labs(title = "ggplot2: hp distribution by cylinders")
