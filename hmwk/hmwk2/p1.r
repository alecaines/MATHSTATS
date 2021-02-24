#install.packages("dplyr")
#library(dplyr)
#library(ggplot2)

data <- read.csv('ex9-37.csv', header=TRUE)

indoor <- data[data[, "Situation"] == "Indoor",]
outdoor <- data[data[, "Situation"] == "Outdoor",]

indoor_concentrations <- indoor[,2]
outdoor_concentrations <- outdoor[,2]

sdi = sd(indoor_concentrations)
sdo = sd(outdoor_concentrations)

meandiff = mean(indoor_concentrations - outdoor_concentrations)
sddiff = sqrt(sdi^2/length(indoor_concentrations) + sdo^2/length(outdoor_concentrations))
zscore = qnorm(0.05)

b = meandiff - zscore*sddiff
a = meandiff + zscore*sddiff

b
a
