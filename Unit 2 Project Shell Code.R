######Unit 2 Probability Problem Set
######Name and Period: Sami Period 2

##### Mini Exercise 1: Airline Pilots
### Question 1: 
#Create the Sample Space. Treat 0 as Male, 1 as Female. 
pilots <- c(rep(1, times = 10), rep(0, times = 15))

#Simulate one trial, with 8 draws in the trial. 
sample(pilots, 8, replace = FALSE)

#Answer in Google Doc: what counts as one trial? 

#Question 1 b: what does this code do? How many trials? How many draws per trial?
replicate(25, sample(pilots, 8, replace=FALSE))

###Question 2: Simulate 500 trials:
pilot_simulation <- replicate(500, sample(pilots, 8, replace = FALSE))

total_female_pilots <- colSums(pilot_simulation)

###Question 3: analyze your data
hist(total_female_pilots, main = "Female Pilots", xlab = "", breaks=0:7)
summary(total_female_pilots)
table(total_female_pilots)

#####Mini Exercise 2: Coin Flips
### Question 1: Simulate flipping for 100 trials, 40 times per trial. Store this data frame as hundred_trials_forty_flips.
#Treat 0= Tails, 1= Heads
coin <- c(0, 1)
hundred_trials_forty_flips <- data.frame(replicate(100, sample(coin, 40, replace = TRUE)))

###Question 2:
#View the Dataframe. Answer in Google Doc: how many columns and rows does this dataframe have? 
View(hundred_trials_forty_flips)
dim(hundred_trials_forty_flips) #this command will also give you the row and column of each. 

###Question 3:Convert hundred_trials_forty_flips into proportions, out of 40. 
prop_hundred_trials_forty_flips <- colSums(hundred_trials_forty_flips) / 40
#HINT: Here, we are summing up the values of each column-- so the number of heads.... Then dividing it by the number of flips in each trial. How many flips were in each trial? That's what goes in the blank


###Question 4: Flip the coin for 100 trials, 100 flips per trial.
hundred_trials_hundred_flips <- replicate(100, sample(coin, 100, replace = TRUE))

prop_hundred_trials_hundred_flips <- colSums(hundred_trials_hundred_flips) / 100

###Question 5: Analyze hundred_trials_hundred flips vs. hundred_trials_forty_flips
hist(prop_hundred_trials_hundred_flips, main = "Probability of fliping tails 100 times", xlab = "Probability")
hist(prop_hundred_trials_forty_flips, main = "Probability of fliping tails 40 times", xlab = "Probability")

summary(prop_hundred_trials_hundred_flips)
summary(prop_hundred_trials_forty_flips)
#For your SOCS paragraph, you MUST use either Standard Deviation or IQR to justify your answer. But you can choose which one to use (or both, if you really fell like it)
sd(prop_hundred_trials_hundred_flips)
sd(prop_hundred_trials_forty_flips)

IQR(prop_hundred_trials_hundred_flips)
IQR(prop_hundred_trials_forty_flips)

######Mini Exercise 3: Horror Movies
###Download SlasherMovies.Rdata into your Documents folder. 
###Question 1:
load("SlasherMovies.RData")
table(slasher)

#The following calculates a proportion for the table:
surivial_by_gender <- prop.table(table(slasher))


######Bias Project. Little help given past this point!
load("Bias_Project.RData")

###Some Functions that could be helpful:
#This function will give you the cumulative proportion of Heads over time. Try running this for coin_1.
plot(x = 1:100, 
     y = cumsum(coin_6)/1:100,
     type = 'b',
     main = "Cumulative Proportion of Heads over Time for Coin 6",
     xlab = "Toss number",
     ylab = "Proportion (in percentage)",
     lwd = 2,
     col = "purple")

summary(coin_6)

hist(coin_1, main = "Number of times coin_1 landed tails or heads")
table(coin_6)

###Dice

table(dice_6)
hist(dice_6, 0:6, 
     main = "Rolls for Dice 6", 
     xlab = "Number", 
     ylab = "Number of times it landed", 
     col = "light green")
plot(x = 1:100, 
     y= cumsum(dice_1)/1:100,
     type = 'b',
     main = "Cumulative Average of rolls over Time for Dice 1",
     xlab = "Toss number",
     ylab = "Average of all previous rolls",
     lwd = 2,
     col = "dark blue")
summary(dice_6)

##Roulette

table(roulette_1)
barplot(table(roulette_1), 
        main = "Counts of number in roulette 1", # Title for the bar plot
        xlab = "Number", # Title for the x axis
        ylab = "Count", # Title for the y axis
        col = rainbow(36)) # This colors the chart

table(roulette_2)
barplot(table(roulette_2), 
        main = "Counts of number in roulette 2", # Title for the bar plot
        xlab = "Number", # Title for the x axis
        ylab = "Count", # Title for the y axis
        col = rainbow(5)) # This colors the chart
