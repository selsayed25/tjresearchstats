#Store your data into a dataframe. Rename "treatment_1" and "treatment_2" with your actual data names. Then enter it into the c() portion. 
my_data <- data.frame(
  Dark = c(206.76, 174.76, 206.37, 92.62, 162.55, 167.67, 131.86, 136.79, 106, 203.39, 203.34, 218.97, 242.27, 188.13, 241.14, 247.45, 242.33, 168.51, 189.43, 219.58, 157.4, 163.21, 175.66, 209.45, 239.66, 120.19, 132.75, 154.26, 100.86, 120.77),
  Milk = c(80.36, 63.86, 73.17, 73.96, 133.68, 158.49, 137.73, 127.82, 121.01, 77.99, 117.75, 108.77, 77.21, 111.43, 73.33, 82.43, 97.05, 105.32, 92.78, 102.18, 89.74, 111.24, 121.23, 79.09, 77.24, 98.64, 80.58, 97.46, 101.73, 121.69)
)

##Part A: Numerical Summary
#Gives a five number summary, as required in Part A. 
summary(my_data)
sd(my_data$Dark)
sd(my_data$Milk)
#This gives only the standard deviation for one treatment. Figure out the other.

##Part B: Graphical Summary
#Make Boxplot, as required in Part B.
boxplot(my_data, 
        horizontal = T, 
        main = "Milk vs Dark Chocolate melting times",
        col = "turquoise", 
        xlab = "Melting Times (in seconds)",
        ylab = "Chocolates (Treatments)")

hist(my_data$Dark,
     main = "Dark Melting Times",
     col = "brown",
     xlab = "Melting Times (in seconds)",)

hist(my_data$Milk,
     main = "Milk Melting Times",
     col = "orange",
     xlab = "Melting Times (in seconds)",)

##Error Bars Code
#Run the next two lines of code with no modifications. 
SEM <- function (x){sd(x) / sqrt(length(x))}
error.bar <- function(x, y, upper, lower = upper, length = 0.1,...){arrows(x, y + upper, x, y - lower, angle = 90, code = 3, lwd = 2, length = length, ...)}

#Rename ylab and main. You can also change the colors if you feel like it. Then, run it.
my_barplot <- barplot(colMeans(my_data), 
                     density = 15,
                     angle = 15, 
                     col = c("skyblue", "pink"),
                     ylim = c(0, 200),
                     ylab = "Melting Time (in seconds)",
                     main = "Milk vs Dark Chocolate melting times"
)
#Run the code below, without any modifications. 
error.bar(my_barplot, colMeans(my_data), apply(my_data, 2, SEM))

