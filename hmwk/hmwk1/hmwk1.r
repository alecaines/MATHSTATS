#1a
print('--------')
print('problem 1')
xbar = 45.31
std = 5.26
mu=20
n = 3
dof = n-1
t = (45.31-20)/(5.26)

print(t)
#pnorm(0.01, xbar, std)
qt(0.01, dof, lower.tail=FALSE)
1-pt(t, dof)

#z = (20 - 45.31)/(5.26/sqrt(3))
#print(z)
#qnorm(0.01, 20, 5.26)
#1-pnorm(z, 50, 10)
#1b (do a beta calculation where false null is 50 and std is 10

print('---------')
print("Prblem 2")

#2
z2 = (215-200)/(235/sqrt(47))
print(z2)
qnorm(0.9, 200, 235)

#3
#df <- read.table("./HW1prob3.xlsx", fileEncoding="UTF-16LE")
print('---------')
print("problem 3")
sum <- (9.85 +9.94 +9.88 +9.93 +9.85 +9.95 +9.75 +9.75 +9.95 +9.77 +9.83 +9.93 +9.67 +9.92 +9.92 +9.87 +9.74 +9.89 +9.67 +9.99)
avg <- sum/20
tru_avg = 9.75
z3 = (tru_avg - avg)/(0.02)
pnorm(z3, tru_avg, 0.02)

#4
print('---------')
print("problem 4")
phat = 1/75
print(phat)
p0 = 1/50
print(p0)
n3 = 800
z = (phat - p0)/(sqrt(p0*(1-p0)/n3))
pnorm(z)

#5
print('---------')
print("problem 5")
phat5 = 51/462
p05 = 1/10
n5 = 462
z5 = (phat5 - p05)/(sqrt(p05*(1-p05)/n5))
print(z5)
print(phat5)

#
#
##OH
#print("OH")
###1
##P-value method
#1-pt(2,35) #test statistic is 2 and degrees of freedom is 35 (1-population (36))
##Critical value method
#####For 0.5 sig level
#qt(0.95, 35)

