### Remember to click Code>> Soft Wrap Long Lines.
### Remember to click Code>> Rainbow Parentheses.

#3.5 R Lab Anscombe Data
#Name and Period: Sami Elsayed - Period 2

#Load the anscombe data. View it. What are the column names, also know as variables?
data(anscombe)
View(anscombe)

#Create a LSRL for each and store it as lsrl_1, lsrl_2

LSRL_1<- lm(y1 ~ x1, data = anscombe)
LSRL_2<- lm(y2 ~ x2, data = anscombe)
LSRL_3 <- lm(y3 ~ x3, data = anscombe)
LSRL_4 <- lm(y4 ~ x4, data = anscombe)


#Calculate the r correlation coefficient, and R^2 value, of each. Record these values onto your packet. 
cor(anscombe$x1, anscombe$y1)
summary(LSRL_1)

cor(anscombe$x2, anscombe$y2)
summary(LSRL_2)

cor(anscombe$x3, anscombe$y3)
summary(LSRL_3)

cor(anscombe$x4, anscombe$y4)
summary(LSRL_4)


#HMMMMMM, very suss. 
#Draw a scatterplot for each model, graph the LSRL on top of it, and then graph the residual plot. Sketch you result in your packet.
#The first one has been done for you. 

##model_1##
plot(anscombe$x1, anscombe$y1,
     main = "Scatterplot for y1~x1, AKA Model 1")
abline(LSRL_1, col = "blue", lwd = 2)

#This code below will give you the residual plot for Model 1. 
plot(LSRL_1$residuals, 
     main="Residual Plot for Model 1")

##model_2. Pick your favorite color for abline. ##
plot(anscombe$x2, anscombe$y2,
          main = "Scatterplot for y2~x2")
abline(LSRL_2, col = "red", lwd = 2)
#Residual Plot
plot(LSRL_2$residuals, 
     main = "Residual Plot for Model 2")

##model_3. Pick your favorite color. ##
plot(anscombe$x3, anscombe$y3,
        main = "Scatterplot for y3~x3")
abline(LSRL_3, col = "green", lwd = 2)
#Residual Plot
plot(LSRL_3$residuals, 
     main = "Residual Plot for Model 3")

#model_4. Pick your favorite color. ##
plot(anscombe$x4, anscombe$y4,
     main = "Scatterplot for y4~x4")
abline(LSRL_4, col = "purple", lwd = 2)

plot(LSRL_4$residuals, 
     main = "Residual Plot for Model 4")

#OPTIONAL: The following code will let you look at all 8 graphs you made, at once. It will stack each graph in a space with 2 rows and 4 columns. 
#Run the code below, and then run all the code that made your graphs, above, again. 
par(mfrow=c(2, 4))


