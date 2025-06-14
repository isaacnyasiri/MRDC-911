data$family_income <- pmin(pmax(data$family_income, lower), upper)
ggplot(data, aes(y = family_income)) + 
geom_boxplot(fill = "lightblue", outlier.color = "red") +
ggtitle("Boxplot After Winsorization")
