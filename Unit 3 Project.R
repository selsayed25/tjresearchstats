# Coded by Sami Elsayed

install.packages(c("tidyverse", "tidycensus"))
library("tidycensus")
library("tidyverse")

# Census API Key

census_api_key("c3287ba943a31cd09c5f594eb0fe293fdfb2349d", 
               install = TRUE,
               overwrite = TRUE)

`readRenviron("~/.Renviron")`

# Data from the Census

# High School Diploma

high_school_diploma <- get_acs(geography = "zcta", 
                               state = "VA", 
                               variables = c("B15003_017"),
                               year = 2019,
                               geometry = TRUE)
head(high_school_diploma)

# Household Income

household_income <- get_acs(geography = "zcta",
                            state = "VA",
                            variables = c("B19013_001"),
                            year = 2019,
                            geometry = TRUE)

head(household_income)

# Plotting the data

plot(household_income$estimate, high_school_diploma$estimate,)

# Linear Model

plot(high_school_diploma$estimate, household_income$estimate,
     main = "HS Diploma by household income in Virginia, by Zip Code",
     xlab = "# of people with a High School Diploma",
     ylab = "Household Income (as of 2019)")

# Regression Line

reg_line <- lm(household_income$estimate ~ high_school_diploma$estimate)
abline(reg_line, col = "red")


# Correlation Coefficient of the Linear Model

cor(household_income$estimate, high_school_diploma$estimate, use = "complete.obs")

# Residual Plot Line

plot(reg_line$residuals,
     ylab = "Residual",
     main = "Residual Plot for Linear Model")

# Data Displays

high_school_diploma_hist <- hist(high_school_diploma$estimate,
                                 main = "# of people who have a HS Diploma",
                                 xlab = "# of people who obtained a HS Diploma",
                                 ylab = "Count (Number of Zip Codes)",
                                 col = "sky blue")

household_income_hist <- hist(household_income$estimate,
                                    main = "Median Household Income",
                                    xlab = "Median Household Income",
                                    ylab = "Count (Number of Zip Codes",
                                    sub = "(In 2019 inflation-adjusted dollars)",
                                    col = "orange")

# Choropleth Map

install.packages("mapview")

# Choropleth Map of # of High School Diplomas in each VA zip code

mapview(high_school_diploma, zcol = "estimate")

# Choropleth Map of Household Income in each VA zip code

mapview(household_income, zcol = "estimate")
