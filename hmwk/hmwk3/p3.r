#3
data <- read.csv("ex11-60.csv")
head(data)
cutspd <- data$Cut_spd
cutdpth <- data$Cut_dpth
Feed <- data$Feed
#summary(data)
#additive
res.aov2 <- aov(life ~ Cut_spd + Cut_dpth, data=data)
summary(res.aov2)
print("There is no affect on the life of a tool based on cut speed given the data... However,
      there is a significant affect given cut depth. I am confused")