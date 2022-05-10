#Remember to wrap this script by click Code> Soft Wrap Long Lines

### 3.2 R Lab: Graphing Scatterplots in R
#Name and Period: Sami Elsayed - Period 2

#Green: mtcars
#Question 1
data(mtcars) #Load the mtcars dataset
?mtcars #Read the description of mtcars
dim(mtcars) #List the variables stored under mtcars. 

#Question 2: Make a Scatter
#Run the code first. Then, modify the code below to add an approrpriate
#x-label and y-label to your plot. 

plot(mpg~wt,
     data = mtcars,
     main = "Scatterplot of Weight vs MPG of 32 Cars",
     xlab = "Weight",
     ylab = "Miles per gallon (mpg)",
     col = "red")
#Copy and paste the final scatterplot into your Google Doc. 


#Question 3: Calculate the correlation "r" value of mtcars's weight and mpg.
cor(mtcars$wt, mtcars$mpg)


#Question 4: Use the code from #2, and plot wt~mpg. 
plot(wt ~ mpg,
     data = mtcars,
     main="Comparing Cars' weight to mpg",
     xlab="Miles per gallon",
     ylab="Weight",
     col = "Blue")

#Question 5: Calculate the correlation coefficient "r"
#of mpg and wt-- the other way around.
cor(mtcars$mpg, mtcars$wt)

#Question 6: Use the code from #1, part e, to create scatterplots for 
#each of the below. Remember to also calculate the correlation coefficient r.

#mpg~cyl
plot(mpg ~ cyl,
            data = mtcars,
            main = "MPG vs Number of cylinders",
            xlab = "Number of Cylinders",
            ylab = "Miles per gallon (mpg)",
            col = "dark green")
cor(mtcars$cyl, mtcars$mpg)

#mpg~hp
plot(mpg ~ hp,
            data = mtcars,
            main = "MPG vs Gross horsepower",
            xlab = "Gross horsepower",
            ylab = "Miles per gallon (mpg)",
            col = "purple")
cor(mtcars$hp, mtcars$mpg)


#Blue: Your Turn: pick a dataset (EUStockMarkets, LifeCycleSavings, Loblolly, Seatbelts, quakes) to analyze and plot.
data(quakes)
?quakes
names(quakes)
dim(quakes)

plot(mag ~ depth,
            data = quakes,
            main = "Magnitude vs Depth",
            xlab = "Depth",
            ylab = "Magnitude",
            col = "dark green")

cor(quakes$depth,quakes$mag)


#Black: iris
data(iris) #load iris.
?iris #Read the description of iris.
names(iris) #Read the variables stored in iris.
dim(iris) #Find the dimensions of iris.


##Question 2: Plot Sepal.Width ~ Petal.Length
plot(Sepal.Width ~ Petal.Length,
            data = iris,
            main = "The width of the sepal vs. the length of the petal",
            xlab = "Petal Length",
            ylab = "Sepal Width",
            col = "orange")
cor(,)

##Question 3: View the Iris Data set. How many species of flowers 
#are measured here?
View(_____)

##Question 4: This code will create a scatterplot for just the 
##setosa flowers.

plot(Sepal.Width~Petal.Length,
     data=subset(______, _______), 
     main="Scatterplot of Petal Length and Sepal Width for setosa flowers",
     xlab="______",
     ylab="_______")

#Now create scatterplots for the versicolor flowers, and the virginica flowers.


###Question 6: Plot a scatterplot that combines the two species that
### do fit in with each other. 



###Question 8: Create a new dataframe called iris_subset that combines
###the data from the two flowers that fit (from question 6). 
iris_subset<- subset()

##Calculate the correlation coefficient.
cor()






