#Remember to wrap lines: Code> Soft Wrap Long Lines

###3.5 R Lab: Linear Regression in R
###Name and Period: Sami Elsayed - Period 2


#Green: cars dataset
#Question 1: Analyze the dataset. 
data(cars)
dim(cars)
?cars
View(cars)

#Question 2: Create a scatterplot of cars. 
plot(dist ~ speed,
            data = cars,
            main = "Cars data",
            xlab = "Miles per hour (mph)",
            ylab = "Stopping distance",
            xlim = c(0,100),
            ylim = c(0,100),
            col = "blue")
cor(cars$dist, cars$speed)



#Question 3. Read the explanation in Google Docs first. Create a 
###LSRL of speed and dist, and store that model into car_reg.
car_reg <- lm(dist ~ speed, data = cars)

###Question 4. Graph the LSR Line onto your scatterplot.
abline(car_reg, col="red")

###Question 5. Run a summary of car_reg. Then, figure out what the 
###actual equation of the LSRL is.
summary(car_reg)



#Blue: swiss
###Question 1: Analyze the dataset with these commands:
data(swiss)
?swiss
names(swiss)
dim(swiss)

###Question 2: Construct a scatterplot of Agriculture as (explanatory) and Agriculture (response).
###Then, calculate the correlation coefficient. 
plot(Education ~ Agriculture,
            data = swiss,
            main = "Education vs Agriculture",
            xlab = "Education beyond primary school",
            ylab = "Agriculture occupation",
            xlim = c(0,100),
            ylim = c(0,100),
            col = "blue")
cor(swiss$Agriculture, swiss$Education)


###Question 3: Construct a linear model for Education and Agriculture,
### and store it into swiss_reg.

swiss_reg <- lm(Education ~ Agriculture, data  = swiss)

#Part B: Plot swiss_reg onto your scatterplot.
abline(swiss_reg, col="red")

plot(swiss_reg$residuals,
     main = "Residual Plot for swiss_reg")

#Part C: Give the equation for your LSRL.
summary(swiss_reg)

#Part E: Predict the average percentage of Males that work in agriculture,
#if the % of education beyond primary school is 16%.
View(swiss)

#Part F: Find the value of the residual for Lausanne. 
plot(swiss$)

#Black Assignment:
#Question 1:
plot(Education~Fertility, data=swiss, 
     main= "Scatterplot of Education vs. Fertility",
     xlab= "Fertility Measure",
     ylab= "% Education beyond primary school for draftees",
     xlim=c(0,100), 
     ylim=c(0,100))
abline(lm(Education~Fertility, data=swiss), col="red", lwd="3")

#Question 4:
plot(lm(Fertility~Education, data=swiss), which=1, main="Residuals vs Predicted Values")

