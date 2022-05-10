##In R Studio, go to the menu> Code> Soft Wrap Long Lines. 

#2.4 R Lab: Running Simulations
##Name and Period: Sami Elsayed - Period 2

#1 IN 6 WINS GAME
## Question 3: We could run more trials of the 1 in 6 Wins Game by using R.
### Part A: Create a numeric vector called caps that simulates the probability of winning the game as 1/6. Remember, 0 means losing, and 1 means winning.

caps <- c(1, 0, 0, 0, 0, 0)  #What goes inside c()? It is more than 2 numbers.

###Part B: Run line 9, above, to save caps to your environment. Then run the line below several times. 
###Answer this in your Google Doc: What do you notice? What does the output mean in context of the game?
sample(caps, 6, replace=TRUE)

###Then, add ONE number in the code below to simulate YOUR group of friends. Which number did you change? 
sample(caps, 7, replace=TRUE)

###Part C: Run the folloiwng code 3 times.Make sure you change the "blank" part based on your previous answer. 
###Answer this in your Google Doc: What does this code do? What does the output mean in the context of the game?
replicate(2, sample(caps, 7, replace=TRUE))

##Question 4
###Use the code in line 16 to run 100 trials, with your group of 7 friends. Store this into a dataframe called trials.
trials <- data.frame(sample(caps, 100, replace = TRUE))

##Question 5
### We're more interested in the number of wins per trial. To do this, we need to sum up each column's wins (represented by a 1) with the function colSums().
  
wins <- colSums(trials)

##Question 6
###Run the line of code below. Copy the table you get into your Google Doc. 
###Answer in Google Doc: In your 100 repetitions of this simulation, how many times did three or more of the group win a prize? 
table(wins)


##Question 7
###Repeat the simulation again, but this time, use 10,000 trials. How many times did three or more of the group win a prize? Use code above to help you. Your final answer should be a table like the one in question 6, but with 10,000 total trials.
table(wins)

##Question 8: Complete this in your Google Doc.
hist(wins)

#SIMULATION PRACTICE

##Question 1
###Part A: Complete in Google Doc.
###Part B: Create a simulation in R of 6 coin flips. 
coin <- c(0,1)
sample(coin, 2, replace = TRUE)
####: Answer this in your Google Doc: why do you need replace=TRUE? Why does R give you an error it replace=FALSE? 

###Part C: Run a simulation of 100 trials.
hundred_flips <- replicate(100, sample(coin, 2, replace = TRUE))

###Part D: Make a histogram of colSums(hundred_flips). Copy and paste the histogram you get into your Google Doc. Make sure it has appropriate title and axes labels. 
hist(colSums(hundred_flips), main = "Coin Flips (100 flips)", xlab = "Heads and Tails")

###Part E: Answer this in your Google Doc. 

##Question 2
### Part A: Complete this in your Google Doc.

### Part B: create a vector called letters that represents the probability of drawing a vowel.
letters <- c(rep(1, times = 42), rep(0, times = 56), rep(0, times = 2))

#### Run 10,000 trials of Mr. McFee pulling 7 letters at a time, without replacement. Store this into a data.frame called draws. 
draws <- data.frame(replicate(10000, sample(7, replace = FALSE)))

###Count up the number of times that you drew X number of vowels from draws.
table(colSums(draws))

###Create a histogram, then paste it into Google Docs. 
hist(colSums(draws))

##Question 3
###Part A. Create a character vector called hello_letters with the 5 letters of "HELLO", in order. 
hello_letters <- c("H", "E", "L", "L", "O")

###Part B: answer in Google Doc.

###Part c: Run a simulation of 100 trials. Store this result in a vector called hellos.
hellos <- replicate(100, sample(hello_letters, 5, replace = TRUE))

###Part D: View hellos.
View(hellos)
####Answer this in your Google Doc. Why would the way hellos is stored make it difficult to analyze how many HELLOs are shuffled out correctly. 

###Part E: Use the following code to collapse each column (which represents a trial), into a single word. RUN EACH LINE!
glued <- apply(hellos, 2, paste0, collapse="")
View(glued)
which(glued=="HELLO")
sum(glued=="HELLO")
####Answer in Google Doc: how many times did you shuffle "HELLO" back correctly? 

##Question 4: Answer this in your Google Doc
