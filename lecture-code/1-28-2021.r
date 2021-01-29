#standard deviation (sigma, std)
#standard error (sigma/\sqrt{n})
weld <- read.csv('ex9-22.csv', header=TRUE)
fabric <- read.csv('ex9-23.csv', header=TRUE)

#Example 1
#boxplot
#boxplot(depth.mm.~current, data=weld)
#t.test(depth.mm.~current,data=weld, alternative="greater")

#Example 2

#load data into vectors
H <-fabric[c(1:25), 1]
P <- fabric[c(25:32), 1]

h<-24
p<-8

#put in scending order
H <-sort(H)
P<-sort(P)

#create percentiles
#percentiles for group H

Per <-00
for(i in 1:h){
	Per[i]<-(100*(i-.5)/h)/100
}


#z scores for group H
Z<-0
for(i in 1:h){
	Z[i]<-qnorm(Per[i])
}

#Plot normal plot for H
plot(Z,H)
#The line of comparison
qqline(H)

#percentiles for group H

Per <-00
for(i in 1:p){
	Per[i]<-(100*(i-.5)/p)/100
}


#z scores for group P
Z<-0
for(i in 1:p){
	Z[i]<-qnorm(Per[i])
}

#Plot normal plot for P
plot(Z,P)
#The line of comparison
qqline(P)


#Box plot
boxplot(Extensibility..~Quality, data=fabric)

#t test
t.test(Extensibility..~Qualty, data=fabric)

