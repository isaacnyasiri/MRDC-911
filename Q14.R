library(dplyr)
data <- data %>%
  mutate(study_hours_binned = case_when(
    study_hours_weekly <= 10 ~ "Low",
    study_hours_weekly <= 20 ~ "Moderate",
    study_hours_weekly <= 30 ~ "High",
    study_hours_weekly > 30 ~ "Very High"
  ))
ggplot(data, aes(x = study_hours_binned)) + 
  geom_bar(fill = "#743785") +
  ggtitle("Study Hours Category Distribution") +
  xlab("Study Hours Category") +
  ylab("Count")

