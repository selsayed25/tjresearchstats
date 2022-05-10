# Coded by Sami Elsayed

# RS1 Final Project - 2022

install.packages("BSDA")
library(BSDA)

# T-Test

tsum.test(mean.x = 99.83,
          s.x = 23.05917,
          n.x = 30,
          mean.y = 177.47,
          s.y = 45.86168,
          n.y = 30,
          alternative = "less")

tsum.test(mean.x = 177.47,
          s.x = 45.86168,
          n.x = 30,
          mean.y = 99.83,
          s.y = 23.05917,
          n.y = 30,
          alternative = "less")
