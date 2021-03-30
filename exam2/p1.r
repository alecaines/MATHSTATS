data <- read.csv('ex11-57.csv')
data$Fabric <- factor(data$Fabric, 
                      levels = c("420-D", "630-D", "840-D"))
#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data)
#summary(res.aov2)

#temp <- data$Temperature..Degrees.
#fabric <- data$Fabric
#pressure <- data$Pressure

data8 <- data[data$Temperature..Degrees.==8,]
data50 <- data[data$Temperature..Degrees.==50,]
data75 <- data[data$Temperature..Degrees.==75,]

#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data8)
#summary(res.aov2)
#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data50)
#summary(res.aov2)
#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data75)
#summary(res.aov2)


data420 <- data[data$Fabric=="420-D",]
data630 <- data[data$Fabric=="630-D",]
data840 <- data[data$Fabric=="840-D",]

res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data420)
summary(res.aov2)
#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data630)
#summary(res.aov2)
#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data840)
#summary(res.aov2)


#data17 <- data[data$Pressure==17.2,]
#data34 <- data[data$Pressure==34.4,]
#data103 <- data[data$Pressure==103.4,]

#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data17)
#summary(res.aov2) 
#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data34)
#summary(res.aov2)
#res.aov2 <- aov(Response ~ Pressure + Temperature..Degrees. + Fabric, data=data103)
#summary(res.aov2)
