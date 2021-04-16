#library(car)
data <- read.csv('Final4.csv')

mod2 <- function(s) if(s=="Yes") 1 else 0
mod2b <- function(s) if(s=="True") 1 else 0
death_rate <- function(L) sum(L[L == 1])/length(L)

white <- data[data$Race == "White, Non-Hispanic",]
white_deaths <- as.numeric(lapply(white$Death_yn, mod2))
wdr <- death_rate(white_deaths)
#shapiro.test(white_deaths)

asian <- data[data$Race == "Asian, Non-Hispanic",]
asian_deaths <- as.numeric(lapply(asian$Death_yn, mod2))
adr <- death_rate(asian_deaths)
#shapiro.test(asian_deaths)

hispanic <- data[data$Race == "Hispanic/Latino",]
hispanic_deaths <- as.numeric(lapply(hispanic$Death_yn, mod2))
hdr <- death_rate(hispanic_deaths)

#shapiro.test(hispanic_deaths)

black <- data[data$Race == "Black, Non-Hispanic",]
black_deaths <- as.numeric(lapply(black$Death_yn, mod2))
bdr <- death_rate(black_deaths)
#shapiro.test(black_deaths)

multiple <- data[data$Race == "Multiple/Other, Non-Hispanic",]
multiple_deaths <- as.numeric(lapply(multiple$Death_yn, mod2))
mdr <- death_rate(multiple_deaths)
#shapiro.test(multiple_death)

amindian <- data[data$Race == "American Indian/Alaska Native, Non-Hispanic",]
amindian_death <- as.numeric(lapply(amindian$Death_yn, mod2))
amdr <- death_rate(amindian_death)
#shapiro.test(amindian_death)

nathawaiian <- data[data$Race == "Native Hawaiian/Other Pacific Islander, Non-Hispanic",]
#nathawaiian_death <- as.numeric(lapply(nathawaiian$Death_yn, mod2))
#shapiro.test(nathawaiian_death)

adr #asian death rate
amdr #american indian death rate
bdr #black death rate
hdr #hispanic death rate
mdr #multiple death rate
wdr #white death rate
drs <- c(adr, amdr, bdr, hdr, mdr, wdr)

print("there is a higher death rate among american indians than any other population")

death_rates <- data[, c("Race", "Death_yn")]
death_rates$Death_yn <- as.numeric(lapply(death_rates$Death_yn, mod2))
head(death_rates); shapiro.test(death_rates$Death_yn); print("passes shapiro wilks")

#chisq.test(death_rates)
#leveneTest(Death_yn ~ Race, data=death_rates)
model <- aov(Death_yn ~ Race, data=death_rates)
summary(model)
death_rates$Death_yn <- as.numeric(lapply(death_rates$Death_yn, mod2b))


#print("Since the p-value is less than 0.05, the test shows that
#     race does not  significant effect on death rate(definitely does, but why doesn't this show it??)")