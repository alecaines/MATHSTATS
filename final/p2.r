data <- read.csv('Final4.csv')

mod2 <- function(s) if(s=="Yes") 1 else 0

white <- data[data$Race == "White, Non-Hispanic",]
white_deaths <- as.numeric(lapply(white$Death_yn, mod2))
shapiro.test(white_deaths)

asian <- data[data$Race == "Asian, Non-Hispanic",]
asian_deaths <- as.numeric(lapply(asian$Death_yn, mod2))
shapiro.test(asian_deaths)

hispanic <- data[data$Race == "Hispanic/Latino",]
hispanic_deaths <- as.numeric(lapply(hispanic$Death_yn, mod2))
shapiro.test(hispanic_deaths)

black <- data[data$Race == "Black, Non-Hispanic",]
black_deaths <- as.numeric(lapply(black$Death_yn, mod2))
shapiro.test(black_deaths)

multiple <- data[data$Race == "Multiple/Other, Non-Hispanic",]
multiple_death <- as.numeric(lapply(multiple$Death_yn, mod2))
shapiro.test(multiple_death)

amindian <- data[data$Race == "American Indian/Alaska Native, Non-Hispanic",]
amindian_death <- as.numeric(lapply(amindian$Death_yn, mod2))
shapiro.test(amindian_death)

nathawaiian <- data[data$Race == "Native Hawaiian/Other Pacific Islander, Non-Hispanic",]
nathawaiian_death <- as.numeric(lapply(nathawaiian$Death_yn, mod2))
shapiro.test(nathawaiian_death)
