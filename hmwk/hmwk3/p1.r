data <- read.csv("ex11-17.csv")

colnames(data)
table(data$Sand.Addition...., data$Carbon.Fiber.Addition...., data$Casting.Hardness, data$Wet.Mold.Strength)
#1a
SSSand = 705
nsand = length(data$Sand.Addition....)
mSSSand = SSSand/(nsand-1)
print("mean square sand")
print(mSSSand)
SSFiber = 1278
nfiber = length(data$Carbon.Fiber.Addition....)
mSSFIber = SSFiber/(nfiber-1)
print("mean square fiber")
(mSSFIber)
SSE = 843
SST = 3105
alpha = 0.05
SSR = SST-SSE
print('tbh not sure what to do here lolol')


#1b
#affect is additive I think...
res.aov2 <- aov(Casting.Hardness ~ Sand.Addition.... + Carbon.Fiber.Addition.... + Wet.Mold.Strength, data=data)
summary(res.aov2)
print("Given alpha of 0.05, it can be determined that the amoutn of carbon fiber and sand additions 
      do indeed affect the molding process. So, the null hypothesis that they do not affect the 
      molding process is rejected.")

#1c
nCastingHardness = length(data$Casting.Hardness)
mCastingHardness = data$Casting.Hardness/nCastingHardness
plot(mCastingHardness, data$Sand.Addition....)
print('lol i did something wrong')