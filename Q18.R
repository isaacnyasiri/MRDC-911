ggplot(data, aes(x = study_hours_weekly, y = total_score)) +
geom_point(alpha = 0.6, color = "steelblue") +
facet_wrap(~ residency) +
labs(
title = "Study Hours vs Total Score by Residency",
   x = "Weekly Study Hours",
    y = "Total Score"
  ) +
  theme_light()
