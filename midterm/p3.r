C <- c(15.00, 7.00, 2.44, 5.60, 3.63, 6.24, 4.12, 8.21, 3.90, 0.95)
B <- c(5.12, 9.38, 18.77, 15.03, 6.67, 7.91, 7.38, 15.09, 11.57, 8.98)

qqnorm(C)
qqline(C)
qqnorm(B)
qqline(B)

difff = C - B
sddiff = sd(difff)
mdiff = mean(difff)
n = length(difff)

t = mdiff/(sddiff/sqrt(n))
t
mdiff + t*(sddiff/sqrt(n))
mdiff - t*(sddiff/sqrt(n))
