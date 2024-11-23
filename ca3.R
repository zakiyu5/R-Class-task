library(dplyr)
library(ggplot2)
View(titanic3)


max(titanic3$pclass)

max(titanic3$fare,na.rm = TRUE)  
h = max(titanic3$fare,na.rm =  TRUE)
mean((titanic3$sex))
print(titanic3$survived)
print(titanic3$age)

ggplot(titanic3, aes(x = sex, y = fare, fill = pclass)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Barplot showing which gender paid maximum based on fare and class",
    x = "Gender",
    y = "Fare"
  ) +
  theme_minimal()

