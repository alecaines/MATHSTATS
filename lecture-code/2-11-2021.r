boys <- c(4.6, 5.5, 6.5, 0.0, 0.0, 3.0, 2.8, 6.4, 1.0, 0.9, 0.0, 28.1, 8.7, 1.6, 5.1, 17.0, 4.7, 28.1)
girls <- c(0.0, 1.3, 2.2, 0.0, 1.3, 0.0, 0.0, 0.0, 0.0, 3.9, 0.0, 10.1, 5.2,3.2, 0.0)

bm <- length(boys)
gm <- length(girls)

stdb <- sd(boys)
stdg <- sd(girls)

#bootstrap boys (mean)
boys_data <- sample(boys, bm, replace=TRUE, prob=NULL)
boys_datamat <- matrix(0, nrow=999, ncol=bm)
for (i in 1:999){
	boys_datamat[i,] <- sample(boys, bm, replace=TRUE, prob=NULL)
}
means_boys <- 0
for( i in 1:999){
	means_boys[i] <- mean(boys_datamat[i,])
}
mean_boys <- mean(means_boys)

#bootstrap girls (mean)
girls_data <- sample(boys, bm, replace=TRUE, prob=NULL)
girls_datamat <- matrix(0, nrow=999, ncol=gm)
for (i in 1:999){
	girls_datamat[i,] <- sample(girls, gm, replace=TRUE, prob=NULL)
}
means_girls <- 0
for( i in 1:999){
	means_girls[i] <- mean(girls_datamat[i,])
}
mean_girls <- mean(means_girls)

#bootstrap difference (mean)?
sdegirlsmeans = sd(means_girls)/sqrt(length(girls))
sdeboysmeans = sd(means_boys)/sqrt(length(boys))
sdediffmeans = sd(means_boys-means_girls)/sqrt(length(boys)+length(girls))

CI_low <- mean_boys - mean_girls + qnorm(0.05)*sdediffmeans
CI_high <- mean_boys - mean_girls + qnorm(0.95)*sdediffmeans

print(CI_low)
print(CI_high)
print(CI_high - CI_low)

hist(means_boys-means_girls)