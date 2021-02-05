# creating the data
data <- data.frame(
  "Freq" = c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2),
  "bloodp" = c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176),
  "first" = c(rep("bad", 4), rep("good", 4), NA, "bad"),
  "second" = c(rep("low", 2), rep("high", 2), rep("low", 2), rep("high", 4)),
  "finaldecision" = c("low", "high", "low", "high", "low", "high", "low", "high",
                      "high", "high")
)

# A. Your first assignment: Create a side-by-side boxplot
boxplot(data$Freq)
boxplot(data$bloodp)

# Histogram
hist(data$Freq)
hist(data$bloodp)
