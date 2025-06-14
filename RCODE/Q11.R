library(dplyr)
library(ggplot2)

hist_before <- ggplot(data, aes(x = attendance_rate)) +
  geom_histogram(binwidth = 0.05, fill = "purple", color = "black") +
  ggtitle("Before Imputation")

data <- data %>%
  mutate(attendance_rate = ifelse(is.na(attendance_rate), 
                                  mean(attendance_rate, na.rm = TRUE), 
                                  attendance_rate))

hist_after <- ggplot(data, aes(x = attendance_rate)) +
  geom_histogram(binwidth = 0.05, fill = "seagreen", color = "black") +
  ggtitle("After Imputation")

print(hist_before)
print(hist_after)
