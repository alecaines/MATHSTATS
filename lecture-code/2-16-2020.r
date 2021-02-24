#load data into variable 'iron'
#split between four diiferent rock formation (group1... group4)

#test for normality (you want null to reject)
##install.packages("dplyr")
##install.packages("ggpubr")

#shapiro.test(group1[,1])
#...
#shapiro.test(group4[,1])

#if data is not in normal, then a transformation may be in order

#test for homogeneity of variance
#bartlett.test(FE~formation, data=iron)
#reject the null. This is good. That means they are the same

#so we can do the Anova
#test <- aov(FE~Formation, data=iron)
#summary(test)
#reject the null

#pairwise comparison
#pairwise.t.test(iron$FE,iron$Formation,p.adj="bonf")
