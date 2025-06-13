cols_to_impute <- c("family_income", "math_score")

for (col in cols_to_impute) {
  data[[col]][is.na(data[[col]])] <- median(data[[col]], na.rm = TRUE)
}
