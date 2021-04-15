data <- read.csv('Final4.csv')
mod2 <- function(s) if(s=="Yes") 1 else 0
mod2sex <- function(s) if(s=="Male") 1 else 0

males <- data[data$Sex == "Male",]
male_deaths <- males[males$Death_yn == "Yes",]

females <- data[data$Sex == "Female",]
female_deaths <- females[females$Death_yn == "Yes",]

#test assumptions
#shapiro wilk

new_f_deaths <- as.numeric(lapply(females$Death_yn, mod2))
sum(new_f_deaths)/length(new_f_deaths)
new_m_deaths <- as.numeric(lapply(males$Death_yn, mod2))
sum(new_m_deaths)/length(new_m_deaths)
shapiro.test(new_f_deaths)
shapiro.test(new_m_deaths)
print("Since the p-value for both are les than 2.2e-6, which is 
  less than 0.05, the data passes the shapiro wilk test and are thus
      normal")
t.test(new_f_deaths, new_m_deaths)
data$Sex <- as.numeric(lapply(data$Sex, mod2sex))
data$Death_yn <- as.numeric(lapply(data$Death_yn, mod2))>0
#res.aov2 <- aov(Death_yn ~ Sex, data=data)
sum(data$Death_yn)
chisq.test(data$Death_yns)
summary(res.aov2)
print("Since the reported p-value is less than 0.05, we reject the 
      null that there is no significant difference.")
#str(female_deaths)
#t.test(c(male_deaths), c(female_deaths))
