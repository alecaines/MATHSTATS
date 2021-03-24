#data<-ex11_17
data <- read.csv("ex11-17.csv")

#install.packages("ggpubr")
#library("ggpubr")

#Have to factor both sand and fiber (make sure they're numeric)
data$sand<-factor(data$sand,levels=c(0, 15, 30),labels=c("0", "15", "30"))
data$fiber<-factor(data$fiber,levels=c(0, .25, .5),labels=c("0", "0.25", "0.5"))

##1a
#To visualize plot for wet(I don't know if its necessary for this part)
#ggboxplot(data, x="sand", y="wet", color="fiber")
#ggline(data, x="sand", y="wet", color="fiber", add= c("mean_se", "dotplot"))

#2-way Anova for wetness
res.aov3<-aov(wet~sand*fiber, data=data)
summary(res.aov3)

##Since our alpha=0.05, only fiber is statistically significant at 
#the 95% confidence level. Therefore, we may reject the null (H_B0) that
# fiber has no effect on wet-mold strength. Therefore, we conclude that 
# fiber has an effect on wet-mold strength. On the other hand, 
#we fail to reject #the nulls (H_A) and (H_AB) that sand and sand*fiber
#have an effect on wet-mold strength.

#This is our post-hoc tests to see which level of fiber is most significant
TukeyHSD(res.aov3, which="fiber")
#If p>0.05 its significant 
pairwise.t.test(data$wet, data$fiber, p.adjust.method= "BH")

##1b
#2-way Anova hardness
res.aov3b<-aov(hardness~sand*fiber, data=data)
summary(res.aov3b)
##Since our alpha=0.05, fiber and sand is statistically significant at 
#the 95% confidence level. Therefore, we may reject the nulls (H_B0) and (H_A0) that
# fiber and sand have no effect on casting hardness. Therefore, we conclude that 
#casting hardness. On the other hand, 
#we fail to reject #the null (H_AB) that sand*fiber
#have an effect on casting hardness.

#This is our post-hoc tests to see which level of fiber and sand is most significant
TukeyHSD(res.aov3b, which="fiber")
TukeyHSD(res.aov3b, which="sand")
#If p>0.05 its significant 
pairwise.t.test(data$hardness, data$fiber, p.adjust.method= "BH")
pairwise.t.test(data$hardness, data$sand, p.adjust.method= "BH")


##1c
#plot means of hardness 
#ggboxplot(data, x="sand", y="hardness", color="fiber")
#ggline(data, x="sand", y="hardness", color="fiber", add= c("mean_se", "dotplot"))









