data <- read.csv('Final4.csv')
mod2 <- function(s) if(s=="Yes") 1 else 0
mod2sex <- function(s) if(s=="Male") 1 else 0

ser <- data[, c("Death_yn", "Ser")]
ser <- ser[ser$Ser>0,]
ser$Death_yn <- as.numeric(lapply(ser$Death_yn, mod2))

model <-aov(Death_yn ~ Ser, data=ser)
summary(model)

# ser$Death_yn <- as.numeric(lapply(ser$Death_yn, mod2))
# ser$Ser <- as.numeric(ser$Ser)
# #str(ser)
# #print(is.numeric(c(ser$Ser)[0]))
# for(v in c(ser$Ser)){
#   if(!is.numeric(v)){
#     print('found it')
#     print(v)
#   }
# }


sex <- data[, c("Death_yn", "Sex")]
sex$Death_yn <- as.numeric(lapply(sex$Death_yn, mod2))
sex$Sex <- as.numeric(lapply(sex$Sex, mod2sex))
sex <- sex[sex$Sex>0,]

sex_model <- aov(Death_yn ~ Sex, data=sex)
summary(sex_model)
# sex <- data[, c("Death_yn", "Sex")]
# sex$Death_yn <- as.numeric(lapply(sex$Death_yn, mod2))
# sex <- na.omit(sex)
# sex$Sex <- as.numeric(lapply(sex$Sex, mod2sex))
# sex_types <- c(lapply(ser$Sex, typeof))
# 
# unique_sex_types <- unique(sex_types)
# print(unique_sex_types)
# str(sex)
# #chisq.test(chsqdata)
# chisq.test(sex)
# #print("The chi-squared test on sex yielded a p-value of 0.9822,
# #        so we fail to rejec the null hypothesis that sex and
# #        death rate are associated with each other. So, sex
# #        and death rate are independent.")