#1. Parameters of interest
#  The parameter of interest is the mean

#Null hypothesis
#mu <- readline(prompt="What is the null value?"); print(mu)
args <- commandArgs(TRUE)
mu <- as.numeric(args[1])
xbar <- as.numeric(args[2])
std <- as.numeric(args[3])
n <- as.numeric(args[4])

#Test statistic value
test <- tolower(args[5])

z = (xbar - mu)/(std / sqrt(n))

#Complete test statistic
#zscore <- pnorm(mu)
zscore <- (xbar - mu)/std
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
	#zscore <- pnorm(??? , mean=xbar, sd=std)
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


