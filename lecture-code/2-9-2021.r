#33 on pg 508
l1 <- c(14.0, 14.3, 12.2, 15.1)
l2 <- c(12.1, 13.6, 11.9, 11.2)
s1 <- sd(l1)
s2 <- sd(l2)
xbar = mean(l1) 
ybar = mean(l2)

m = 4
n = 4

sp = sqrt((m-1)/(m+n-2)*s1*s1 + (n-1)/(m+n-2)*s2*s2)
#t = 2.447 
#confidence interval is (-.24, 3.64)
#T = ((xbar - ybar) - (mu1 - mu2))/(sp*sqrt(1/m + 1/n))
#print(T)

#F test
pf(5.82, 4, 6, lower.tail = FALSE, log.p = FALSE)

