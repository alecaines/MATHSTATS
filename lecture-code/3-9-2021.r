my_data <- ToothGrowth
my_data$dose <- factor(my_data$dose, 
		       levels = c(0.5, 1, 2),
		       labels = c("D0.5", "D1", "D2"))

# lets see if daat is balanced or unbalanced
head(my_data)
table(my_data[,2], my_data[,3])
# table(my_data$supp, my_data$dose) #same as above
# this is balanced, so we will proceed with balanced 
## two-facor anova in r

#boxplot w two factor vars
#boxplot(len~supp*dose, data=my_data, frame=FALSE, 
#	col = c("#00AFBB", "#E7B800"), ylab="Tooth Length")
#
##wo-way interaction plot
#interaction.plot(x.factor =  my_data$dose, trace.factor = my_data$supp,
#		response = my_data$len, fun=mean,
#		type="b", legend=RUE,
#		xlab="Dose", ylab="Tooth Length",
#		pch=c(1,19), col=c("#00AFBB", "#E7B800"))
#
#doesnt look additive/parallel. So interacive model i tis!
res.aov2 <- aov(len~supp+dose, data=my_data) #additive model
summary(res.aov2)

#interaciton model
#model 1
res.aov3 <- aov(len ~ supp*dose, data=my_data)
#summary(res.aov3)
res.aov3 <- aov(len ~ supp+dose+supp:dose, data=my_data)
#summary(res.aov3)

#pairwise comparisons
TukeyHSD(res.aov3, which="dose") #pvalue is adjusted othe diff groups

#we can also do pairwise t test
pairwise.t.test(my_data$len, my_data$dose, 
		p.adjust.tmehod="BH")

#checking assumpions
##homogeneity of variance
plot(res.aov3, 1)

library(car)
leveneTest(len~supp*dose, data=my_data)
#normality
plot(res.aov3,2)

#extract residuals
aov_residuals <- resuiduals(object=res.aov3)
#conduc shapiro wilk on residuals
shapiro.test(x=aov_residuals)

#they are normal!! as they are greater than 0.05
