ggplot(data, aes(x = study_hours_weekly)) +
  geom_histogram(binwidth = 2, fill = "#443785", color = "white") +
  facet_wrap(~residency) +
  labs(
    title = "Study Hours by Residency",
    x = "Weekly Study Hours",
    y = "Number of Students"
  ) +
  theme_minimal()
