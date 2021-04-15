data <- read.csv('Final4.csv')

getlabel <- function(x,s) x[x$Age == s,]
deaths <- function(x) as.numeric(lapply(x$Death_yn, function(s) if(s=="Yes") 1 else 0))
death_rate <- function(L) sum(L[L == 1])/length(L)
process <- function(x,s) death_rate(deaths(getlabel(x,s)))

d3039 <- process(data, "30 - 39 Years")
d1019 <- process(data, "10 - 19 Years")
d4049 <- process(data, "40 - 49 Years")
d7079 <- process(data, "50 - 59 Years")
d2029 <- process(data, "20 - 29 Years")
d09 <- process(data, "0 - 9 Years")
d6069 <- process(data, "60 - 69 Years")
d80p <- process(data, "80+ Years")

print('The age group with teh highest death rate is 80+')

death_rates <- data[, c("Age", "Death_yn")]
death_rates$Death_yn <- as.numeric(lapply(death_rates$Death_yn, mod2))
model <- aov(Death_yn ~ Age, data=death_rates)

summary(model)

print('Since the p-value is less than 0.05, we can reject the 
      null that there is no significant difference')
