data <- read.csv('Final4.csv')
ser <- data[, c("Cholesterol", "Ser")]
nser <- ser[ser$Ser>0,]
str(nser)
chisq.test(nser)

print("Since the p-value is less than 0.05, we 
      reject the null hypothesiss that there is 
      no association between cholesterol and seriability")
