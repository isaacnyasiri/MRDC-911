num_data <- data %>% select(where(is.numeric), -student_id)
corr_matrix <- cor(num_data, use = "complete.obs")
corrplot(corr_matrix, method = "color", type = "lower")

