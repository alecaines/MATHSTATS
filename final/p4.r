data <- read.csv('Final4.csv')
mod2 <- function(s) if(s=="Yes") 1 else 0
mod2sex <- function(s) if(s=="Male") 1 else 0

ser <- data[, c("Death_yn", "Ser")]
ser$Death_yn <- as.numeric(lapply(ser$Death_yn, mod2))
str(ser)

sex <- data[, c("Death_yn", "Sex")]
sex$Death_yn <- as.numeric(lapply(sex$Death_yn, mod2))
sex$Sex <- as.numeric(lapply(sex$Sex, mod2sex))
str(sex)
chisq.test(sex)