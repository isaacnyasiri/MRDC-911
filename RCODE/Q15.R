library(dplyr)
data <- data %>%
mutate(family_income_binned = ntile(family_income, 4)) %>%
mutate(family_income_binned = factor(family_income_binned,                                      labels = c("Low", "Medium-Low", "Medium-High", "High")))
table(data$family_income_binned, data$academic_performance)
