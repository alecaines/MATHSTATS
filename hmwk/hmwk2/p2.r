#p2
#a
data <- c(-24, -12, -55, -15, -30, -60, -14, -21, -48, -12, -25, -53, -61, -69, -80)
qqnorm(data)
qqline(data)
#seems normal


#b
mean = mean(data)
sd = sd(data)
n = length(data)
sde = sd/sqrt(n)
zscore = qnorm(0.975) #95% on normal curve, means that 2.5 is split between both tails.
lower = mean+zscore*sde
upper = mean-zscore*sde
print(lower)
print(upper)

#c
print("A 95% upper bound would be the 95% 
 of the confidence intervals computed at 
      95% confidence level contain the proposed mean")

#d
print("Pairing when mudiff = 0 does not make any sense because then the age at 
onset and the age at diagnosis would be the same.")

#e
mud = 25
zscore_e = qnorm(0.975)
z = (mean - mud)/sde
print(z)
print("(e) The above is outside of the bounds, so we reject the null that 
      the average diagnosis occurs more than 25 months after the onset of 
      symptoms")

