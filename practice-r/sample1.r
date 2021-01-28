cat("Enter standard deviaiton 's': ")
s <- readline("stdin", n=1)

cat("Enter mean 'xbar': ")
xbar <- readline(prompt="")

cat("Enter sample size 'n': ")
n <- readline("stdin",n=1)

cat("Enter null hypothesis 'm0': ")
m0 <- readline("stdin",n=1)

s <- as.integer(s)
xbar <- as.integer(xbar)
n <- as.integer(n)
m0 <- as.integer(m0)

t <- (xbar-m0)/(s/sqrt(n))
print("The t value is", t)


