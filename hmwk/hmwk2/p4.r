data <- read.csv('ex9-64.csv', header=TRUE)


energizer <- data[data[, "Brand"] == "Energizer",][1][,1]
ultracell <- data[data[, "Brand"] == "Ultracell",][1][,1]
#a
qqnorm(energizer)
qqline(energizer)
qqnorm(ultracell)
qqline(ultracell)
print("The observed data is normal")

#b--use a two-sided F-test at 0.05 sig level
print("H0: var(energizer) - var(ultracell) = 0,
      Ha: var(energizer) - var(ultracell) != 0")

ve = var(energizer)
vu = var(ultracell)
print(ve/vu)
print("Reject the null that the variances do not differ")

#c
#print("I would not pay the extra money because the 
#      variance of the energizer batteries is too high")
#print("H0: p1 - p2 = 0; Ha: p1 - p2 != 0")