#1
print("Problem 1")
n1 = 3
xbar1 = 45.31
e = 5.26
mu01=20

t = (xbar1-mu01)/(e)
print(t)
1-qt(0.01, 2)
#1b
1-qt(0.01, 50, 10)
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
print("Problem 3")
data <-read.csv('HW1prob3.csv')[,1]
n3 = length(data)
xbar3 = mean(data)
mu03 = 9.75
std = sd(data) 
print(xbar3)
qt(0.1, n3, lower.tail=FALSE)

#vector <- dataset[,c], c is a column
#std(dataset[,1])

#4a
print("problem 4a")
n4 = 800
phat4 = 16/800
p04 = 1/75
z4 = (phat4 - p04)/(sqrt(p04*(1-p04)/n4))
print(z4)
qnorm(0.975)
pvalue=2*(1-pnorm(1.75))
print(pvalue)
#4b
print("prblem 4b")
pvalueb = 2*(1-pnorm(1.74))
print(pvalueb > 0.05)
#5
print("Problem 5")
phat=51/462
p0=.1
n=462
z = (phat-p0)/(sqrt(p0*(1-p0)/n))
print(z)
qnorm(0.95)
