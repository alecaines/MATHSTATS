#getting data into R
iron<-read.csv(file.choose(),header=TRUE)
head(iron)
#boxplot(FE~Formation, data=iron, col=c("red","yellow","green","blue"))
#
#
##subset data by groups
#
#group1<-iron[which(iron$Formation==1),]
#group2<-iron[which(iron$Formation==2),]
#group3<-iron[which(iron$Formation==3),]
#group4<-iron[which(iron$Formation==4),]
#
##test for normality
##install.packages("dplyr")
##install.packages("ggpubr")
#
#shapiro.test(group1[,1])
#shapiro.test(group2[,1])
#shapiro.test(group3[,1])
#shapiro.test(group4[,1])
#
##If your data is not normal, a transformation may be in order
#
##Test for homogeneity of variance
#bartlett.test(FE~Formation, data=iron)
#
##Yes we have homogeneity of variance so we can do the anova
#
##Anova test
#test<-aov(FE~Formation, data=iron)
#summary(test)
##reject the null
#
#
##pairwise comparison
#
#pairwise.t.test(iron$FE,iron$Formation,p.adj="bonf")
