data %>%
  group_by(extracurricular_activities) %>%
  summarise(n = n()) %>%
  mutate(prop = n / sum(n))

data %>%
  group_by(faculty) %>%
  summarise(n = n()) %>%
  mutate(prop = n / sum(n))

