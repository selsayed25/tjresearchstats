data()
#
# Measurements of the annual flow of the Nile at Aswan, Egypt, 1871-1970
#
?Nile
summary(Nile)
stripchart(Nile, method="stack", at=0)
#
# Death rates per 1,000 in Virginia in 1940
#
summary(VADeaths)
?VADeaths
#
# Pepper Prices
#
load("~/PepperPrice.RData")
summary(PepperPrice)
View(PepperPrice)
stripchart(PepperPrice$black, method="stack", at=0)
stripchart(PepperPrice$white, method="stack", at=0)