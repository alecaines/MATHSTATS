#1
print("Problem 1")
n1 = 3
xbar1 = 45.31
e = 5.26
mu01=20

t = (xbar1-mu01)/(e)
print(t)
qnorm(0.01, 2, lower.tail=FALSE)
1-pnorm(0.01, 50, 10)
#2
##2a
##2b
print("Problem 2b")
n = 47
xbar = 215
s = 235
mu0 = 200

t = (xbar-mu0)/(s/sqrt(n)) #test statistic
print(t)
qt(0.01, 46, lower.tail=FALSE) #t critical value

#3
n3 = 20
xbar3 = (9.85 +9.94 +9.88 +9.93 +9.85 +9.95 +9.75 +9.75 +9.95 +9.77 +9.83 +9.93 +9.67 +9.92 +9.92 +9.87 +9.74 +9.89 +9.67 +9.99)/n3
mu03 = 9.75
std = 0.00930
print(xbar3)
qt(0.1, n3, lower.tail=FALSE)

#5
print("Problem 5")
phat=51/462
p0=.1
n=462
z = (phat-p0)/(sqrt(p0*(1-p0)/n))
print(z)
