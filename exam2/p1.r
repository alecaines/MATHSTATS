data <- read.csv('ex11-57.csv')

#temp <- data$Temperature..Degrees.
#fabric <- data$Fabric
#pressure <- data$Pressure

data8 <- data[data$Temperature..Degrees.==8,]
data50 <- data[data$Temperature..Degrees.==50,]
data75 <- data[data$Temperature..Degrees.==75,]

res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data8)
summary(res.aov2)

#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data)
#summary(res.aov2)

#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data)
#summary(res.aov2)