#Intro to Two Sample Testing
#Name and Period: Sami Elsayed, Period 2
#Install the BDSA package.
install.packages("BSDA")
#Load it into memory. 
library(BSDA)

#Use zsum.test for proportions. Run the line below to read the documentation.
?prop.test

prop.test(x = c(11, 14),
          n = c(35, 30),
          alternative = "less",
          correct = FALSE)

#Use tsum.test for proportions. Run the line below to read the documentation.
?tsum.test
#Command "not found" below? You didn't load the library(BSDA). Run line 6.
tsum.test(mean.x = 1884.52,
          s.x = 1368.37,
          n.x = 675,
          mean.y = 1360.39,
          s.y = 1037.46,
          n.y = 621,
          alternative = "gender")

tsum.test(mean.x = 1884.52,
          s.x = 1368.37,
          n.x = 675,
          mean.y = 1360.39,
          s.y = 1037.46,
          n.y = 621,
          alternative = "greater")
