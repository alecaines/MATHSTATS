data <- read.csv('testprob.csv', header=TRUE)


bubblegum <- data[data$Location=="Bubble Gum Room",]["CC.Level"]
chocolate <- data[data$Location=="Chocolate River",]["CC.Level"]
taffy <- data[data$Location=="Taffy Tank",]["CC.Level"]
caramel <- data[data$Location=="Caramel Chew Loo",]["CC.Level"]

nbubblegum <- bubblegum[!is.na(bubblegum)]
nchocolate <- chocolate[!is.na(chocolate)]
ntaffy <- taffy[!is.na(taffy)]
ncaramel <- caramel[!is.na(caramel)]

shapiro.test(nbubblegum)
shapiro.test(log(log(nchocolate+1)+1))
shapiro.test(ntaffy)
shapiro.test(ncaramel)

ndata <- rbind(nbubblegum, log(nchocolate), ntaffy, ncaramel)

#using the 'data' variable as opposed to the 'ndata' variable 
#since running with 'ndata' yields the following results
##Error in model.frame.default(formula = CC.Level ~ Location, data = ndata,  : 
##'data' must be a data.frame, not a matrix or an array
test <- aov(CC.Level~Location, data=ndata)
summary(test)
