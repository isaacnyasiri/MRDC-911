ggplot(data, aes(x = academic_performance, y = math_score, fill = gender)) +
  geom_boxplot(outlier.shape = 21, outlier.fill = "white", outlier.color = "black") +
  labs(
    title = "Math Score by Academic Performance and Gender",
    x = "Academic Performance",
    y = "Math Score",
    fill = "Gender"
  ) +
  theme_minimal()

