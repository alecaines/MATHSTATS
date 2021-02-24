avgs <- c(462.0, 512,8, 437.5, 469.3, 532.1)
mse = 272.8
J = 4
I = 5
q = qtukey(0.95, length(avgs), length(avgs)*J-1)
w = q*sqrt(mse/J)
