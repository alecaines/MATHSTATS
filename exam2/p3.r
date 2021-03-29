data <- read.csv('ex12-74.csv')
tdata = data[1:8,]
tdata
model <- lm(CO ~ NO3, data=data)
summary(model)
print('---------------------')
print(model)
print('===========tmodel============')
tmodel <- lm(CO ~ NO3, data=tdata)
summary(tmodel)

plot(data$NO3, data$CO)
#line(log(data$NO3), log(data$CO))
#prediction <- predict(model, c(400))
#print(prediction)

#confidence interval
t_int = 0.627
t_no3 = 12.719
error_int = 21.734
error_no3 = 1.728
r2 = deviance(model)
yhat = 5473.97
bound = t_int*sqrt(error_int*(1/length(data)+1+r2))
yhat = mean(data$CO)
yhat
yhat-bound
yhat+bound



#t_no3*sqrt(error_no3*(1/length(data)+1+r2))