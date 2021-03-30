data <- iris
data = data[!is.na(data$Sepal.Length),]
data = data[!is.na(data$Sepal.Width),]
data = data[!is.na(data$Petal.Length),]
data = data[!is.na(data$Petal.Width),]
data$Species <- factor(data$Species, levels=c("setosa", "versicolor", "virginica"))

setosa <- subset(data[data$Species=="setosa",], select = -Species)
versicolor <- subset(data[data$Species=="versicolor",], select=-Species)
virginica <- subset(data[data$Species=="virginica",], select=-Species)

#var(setosa)
#var(versicolor)
#var(virginica)

#summary(data)
#head(data)
#res.aov2 <- aov(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=data)
#summary(res.aov2)
#data$Sepal.Length[0]

sepallength = aov(Sepal.Length ~ Species, data=data)
summary(sepallength)
sepalwidth= aov(Sepal.Width ~ Species, data=data)
summary(sepalwidth)
petallength = aov(Petal.Length ~ Species, data=data)
summary(petallength)
petalwidth= aov(Petal.Width ~ Species, data=data)
summary(petalwidth)