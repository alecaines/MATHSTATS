data <- read.csv("ex11-17.csv")

colnames(data)
table(data$Sand.Addition...., data$Carbon.Fiber.Addition...., data$Casting.Hardness, data$Wet.Mold.Strength)

#1b
res.aov2 <- aov(Casting.Hardness ~ Sand.Addition.... + Carbon.Fiber.Addition.... + Wet.Mold.Strength, data=data)
summary(res.aov2)
print("The")
