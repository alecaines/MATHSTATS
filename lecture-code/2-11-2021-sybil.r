boys <- c(4.6, 5.5, 6.5, 0.0, 0.0, 3.0, 2.8, 6.4, 1.0, 0.9, 0.0, 28.1, 8.7, 1.6, 5.1, 17.0, 4.7, 28.1)
girls <- c(0.0, 1.3, 2.2, 0.0, 1.3, 0.0, 0.0, 0.0, 0.0, 3.9, 0.0, 10.1, 5.2,3.2, 0.0)

mean_boys <- mean(boys)
mean_girls <- mean(girls)

bm<-length(boys)
gm<-length(girls)

boys_datamat <- matrix(0, nrow=999, ncol=bm)
girls_datamat <- matrix(0, nrow=999, ncol=gm)


for (i in 1:999){
	boys_datamat[i,] <- sample(boys, bm, replace=TRUE, prob=NULL)
}

for (i in 1:999){
	girls_datamat[i,] <- sample(girls, gm, replace=TRUE, prob=NULL)
}


means_boys <- 0
for( i in 1:999){
	means_boys[i] <- mean(boys_datamat[i,])
}
mean_boys <- mean(mean_boys)

means_girls <- 0
for( i in 1:999){
	means_girls[i] <- mean(girls_datamat[i,])
}
mean_girls <- mean(mean_girls)


means_diff = means_boys - means_girls
mean_diff = mean(means_diff)
sd_diff = sd(means_diff)


CI_low = mean_diff - qnorm(0.025, 0, 1)*sd_diff
CI_high = mean_diff + qnorm(0.025, 0, 1)*sd_diff


print(CI_low)
print(CI_high)
