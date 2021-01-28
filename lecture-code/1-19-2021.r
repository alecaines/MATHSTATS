#t distribution
#in TI84
#invT(.95,35)

#in r

qt(.95,35)


#In the TI84
#tcdf(2,1E99,35)
#pt(test statistic, degrees of freedom)

1-pt(2,35)

#Straightening wire coil problem
tstat<-(2160-2150)/(30/sqrt(16))

1-pt(tstat,15)

#Finding a pvalue with a zscore
#two-tailed test
2*pnorm(-3.66)
