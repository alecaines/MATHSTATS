#1. Parameters of interest
#  The parameter of interest is the mean

#Null hypothesis
#p0 <- readline(prompt="What is the null value?"); print(p0)
args <- commandArgs(TRUE)
p0 <- as.numeric(args[1])
phat <- as.numeric(args[2])
std <- as.numeric(args[3])
n <- as.numeric(args[4])

#Test statistic value
test <- tolower(args[5])

z = (phat - p0)/sqrt(p0(1-p0)/n)

#Complete test statistic
#zscore <- pnorm(p0)
zscore <- (phat - p0)/std
print(zscore)

if(test == 'upper-tailed'){
	print('upper-tailed')
	#Rejection region
	if(z < zscore){
	#Return computed value and whether to reject or accept null
		print("Accept the null hypothesis")
	}
	else{
	#Alternative Hypothesis
		print("Reject the null hypothesis")
	}
} else if(test == 'lower-tailed'){
	print('lower-tailed')
	#Rejection region
	if(z > -zscore){
	#Return computed value and whether to reject or accept null
		print("Accept the null hypothesis")
	}
	else{
	#Alternative Hypothesis
		print("Reject the null hypothesis")
	}
} else if(test == 'two-tailed'){
	#zscore <- pnorm(??? , mean=phat, sd=std)
	print('two-tailed')
	#Rejection region
	if(z > -zscore || z < zscore){
	#Return computed value and whether to reject or accept null
		print("Accept the null hypothesis")
	}
	else{
	#Alternative Hypothesis
		print("Reject the null hypothesis")
	}
} else {
	print("Please denote whether the test is either 'upper-tailed', 'lower-tailed', or 'two-tailed'")
}


