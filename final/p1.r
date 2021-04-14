data <- read.csv('Final4.csv')


males <- data[data$Sex == "Male",]
male_deaths <- males[males$Death_yn == "Yes",]

females <- data[data$Sex == "Female",]
female_deaths <- females[females$Death_yn == "Yes",]

#test assumptions
#shapiro wilk
mod2 <- function(s) if(s=="Yes") 1 else 0
new_f_deaths <- as.numeric(lapply(females$Death_yn, mod2))
new_m_deaths <- as.numeric(lapply(males$Death_yn, mod2))
shapiro.test(new_f_deaths)
shapiro.test(new_m_deaths)
print("Since the p-value for both are les than 2.2e-6, which is 
  less than 0.05, the data passes the shapiro wilk test and are thus
      normal")
t.test(new_f_deaths, new_m_deaths)
print("Since the reported p-value is less than 0.05, we reject the 
      null that there is no significant difference.")
#str(female_deaths)
#t.test(c(male_deaths), c(female_deaths))
