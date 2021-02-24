#p3
#print("(a) H0: p1 - p2 = 0 and p3 - p4 = 0, Ha: p1 - p2 != 0 and p3 - p4 != 0")
print("(a) H0: (p1+p3) = (p2+p4), Ha: (p2 + p4) != (p1 + p3)")
#b
#c
print("X^2 = ((p2+p4)-(p1+p3))^2/((p2+p4)-(p1+p3)")
#d
x1 = 350
x2 =150
x3 = 200
x4 = 300
n = x1+x2+x3+x4
p1 = (x1+x2)/n
p2 = (x3+x4)/n
p3 = (x1+x3)/n
p4 = (x2+x4)/n

#(((p2+p4)-(p1+p3))^2/((p2+p4)-(p1+p3)))
(p2 - p3)^2/(p2+p3)
P = (x2 - x3)^2/(x2+x3)


M <- matrix(c(x1,x2,x3,x4), nrow = 2)
addmargins(M)
mcnemar.test(M, y=NULL,correct = TRUE)
addmargins(M)
E <- matrix(c(44,34,46,30), nrow = 2)
addmargins(E)