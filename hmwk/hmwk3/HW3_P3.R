### P3 

#data3<-ex11_60 
data3<-read.csv("ex11-60.csv")

#Factor cut_dpth, feed, cut_spd
data3$Feed<-factor(data3$Feed,levels=c(0.061, 0.168),labels=c("0.061", "0.168"))
data3$Cut_spd<-factor(data3$Cut_spd,levels=c(1.21, 3.05),labels=c("1.21", "3.05"))
data3$Cut_dpth<-factor(data3$Cut_dpth,levels=c(0.102, 0.203),labels=c("0.102", "0.203"))

#3-way Anova for life and no interactions
res.aov3.3<-aov(life~Cut_spd+Cut_dpth+Feed, data=data3)
summary(res.aov3.3)

#This is our post-hoc tests to see which level of Cut_spd and Feed is most significant
TukeyHSD(res.aov3.3, which="Cut_spd")
TukeyHSD(res.aov3.3, which="Feed")

#If p>0.05 its significant 
pairwise.t.test(data3$life, data3$Feed, p.adjust.method= "BH")
pairwise.t.test(data3$life, data3$Cut_spd, p.adjust.method= "BH")




