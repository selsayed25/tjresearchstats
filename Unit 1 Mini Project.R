#
# Insect Sprays
#

View(InsectSprays)
names(InsectSprays)
?InsectSprays
boxplot(count~spray, data=InsectSprays, main="Effectiveness of Insect Sprays", xlab="Insect Sprays", ylab="Number of Insects that Survive")
summary(InsectSprays[InsectSprays$spray=="A",])
summary(InsectSprays[InsectSprays$spray=="B",])
summary(InsectSprays[InsectSprays$spray=="C",])
summary(InsectSprays[InsectSprays$spray=="D",])
summary(InsectSprays[InsectSprays$spray=="E",])
summary(InsectSprays[InsectSprays$spray=="F",])

#
# World Phones
#

View(WorldPhones)
names(WorldPhones)
?WorldPhones
boxplot(WorldPhones, horizontal=T, main = "Number of Phone around the world", ylab = "Continets", xlab = "Number of Phones")

#
# VADeaths
#

summary(VADeaths)
boxplot(VADeaths, horizontal=T, main = "Virginia Deaths during 1940", xlab = "Number of Deaths", ylab = "Place_Gender")

#
# airquality
#

names(airquality)
boxplot(airquality$Temp)
boxplot(airquality[airquality$Month=="5",]$Temp, main = "May", ylab = "Temperature")
boxplot(airquality[airquality$Month=="6",]$Temp, main = "June", ylab = "Temperature")
boxplot(airquality[airquality$Month=="7",]$Temp, main = "July", ylab = "Temperature")
boxplot(airquality[airquality$Month=="8",]$Temp, main = "August", ylab = "Temperature")
boxplot(airquality[airquality$Month=="9",]$Temp, main = "September", ylab = "Temperature")

#
# Ozone
#

hist(airquality$Ozone, main = "Ozone", xlab = "Ozone parts per billion")
