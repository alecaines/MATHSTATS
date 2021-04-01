#problem 1
#black <- 57
#asian <- 11
#white <- 330
#hispanic <- 6

#total <- black + asian + white + hispanic

#black/total
#asian/total
#white/total
#hispanic/total

#chisq.test(c(57,11,330,6))

#problem 8 page 731 (744)
#p = 15/365 #probability of being admitted seven days before your birthday
#total = 200*p
#f = c(11,24,69,96)
#nf = f/total
#nf
#chisq.test(nf)
#pchisq(0.4674, length(f)-1)

#problem 9
#data <- c(.10, .99, 1.14, 1.26, 3.24, .12, .26, .80,
#          .79, 1.16, 1.76, .41, .59, .27, 2.22, .66,
#          .71, 2.21, .68, .43, .11, .46, .69, .38,
#          .91, .55, .81, 2.51, 2.77, .16, 1.11, .02,
#          2.13, .19, 1.21, 1.13, 2.93, 2.14, .34, .44)

#ndata = data*40
#chisq.test(ndata)
#pchisq(1.45, 4)

#problem ?

freqs <- c(.301, .176, .125, .097, .079, .067, .058, .046)
fibs <- numeric(85)
fibs[1] <- fibs[2] <- 1
for (i in 3:85) fibs[i] <- fibs[i-2] + fibs[i-1]
fibs