library(dplyr)
hist_before <- ggplot(data, aes(x = attendance_rate)) +
  geom_histogram() +
  ggtitle("Before Imputation")
data <- data %>%
  mutate(attendance_rate = ifelse(is.na(attendance_rate), mean(attendance_rate, na.rm = TRUE), attendance_rate))
hist_after <- ggplot(data, aes(x = attendance_rate)) +
  geom_histogram() +
  ggtitle("After Imputation")
