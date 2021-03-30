data <- read.csv('ex12-68.csv')
plot(data$Height, data$Price)
model <- lm(Price ~ Height, data=data)
summary(model)