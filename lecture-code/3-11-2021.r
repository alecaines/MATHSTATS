steel <- read.csv('steel.csv', header=TRUE)

#a
stem(steel[,1])
stem(steel[,2])

#b
plot(steel[,1], steel[,2])

#c
cor(steel[,1], steel[,2])