load("~/PepperPrice.RData")
#
# Black Peppers
#
hist(PepperPrice$black)
hist(PepperPrice$black, col = "darkgrey")
hist(PepperPrice$black, xlab = "Price for Black Peppers", main = "Black Peppers")
#
# White Peppers
#
hist(PepperPrice$white)
hist(PepperPrice$white, col = "white")
hist(PepperPrice$white, xlab = "Price for White Peppers", main = "White Peppers")