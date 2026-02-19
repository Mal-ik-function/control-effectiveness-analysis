# Load data
data <- read.csv("sample_control_data.csv")

# Calculate failure rate
data$failure_rate <- data$failures / data$tests_executed

# View summary statistics
summary(data$failure_rate)

# Aggregate by control
aggregate(failure_rate ~ control_id, data, mean)

# Basic plot
plot(data$tests_executed,
     data$failures,
     main = "Control Failures vs Tests Executed",
     xlab = "Tests Executed",
     ylab = "Failures")
