data <- read.csv('Final4.csv')
ser <- data[, c("Cholesterol", "Ser")]
nser <- ser[ser$Ser>0,]
str(nser)

model <- aov(Ser ~ Cholesterol, data=nser)
summary(model)
print("Since the p-value is greater than 0.05, we 
      accept the null hypothesiss that there is 
      an association between cholesterol and seriability")
