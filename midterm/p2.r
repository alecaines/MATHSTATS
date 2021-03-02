data <- read.csv('ex9-88.csv', header=TRUE)

posdom <- c(data["Pos_Dom_"][,])
posndt <- c(data["Pos_ND_T"][,])
pitdom <- c(data["PIT_Dom_"][,])
pitndt <- c(data["Pit_ND_T"][,])

nposdom <- pitdom[!is.na(posdom)]
nposndt <- pitndt[!is.na(posndt)]

diffpos = nposdom - nposndt
mdiffpos = mean(diffpos)
sddiffpos = sd(diffpos)/sqrt(length(diffpos))
sddiffpos
print('---')
tpos = mdiffpos/(sddiffpos*sqrt(length(diffpos)))
tpos
#diff pm z*sde
mdiffpos + qnorm(0.95)*sddiffpos
mdiffpos - qnorm(0.95)*sddiffpos