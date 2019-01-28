# Histogram for all variables in a dataset mtcars. 
# Write a program to create histograms for all columns.

library(readr)
library(ggplot2)
mtcars <- read_csv("E:/munmun_acadgild/acadgild data analytics/supporting files/mtcars.csv")
View(mtcars)
mtcars
str(mtcars)

par(mfrow=c(3,4))            # set the graph area
lapply(mtcars[2:12], hist)   # apply histogram plot function to all column of mtcars

# 2. Check the probability distribution of all variables in mtcars

par(mfrow=c(3,4))           # set the graph area

# writing a function to plot probability
prob <- function(prob){
  x <- sort(prob)
  hx <- dnorm(prob)
  p <- plot(x, hx, type="l")
}

lapply(mtcars[2:12], prob)   # applying the function to all the columns


# 3. Write a program to create boxplot for all variables.

par(mfrow=c(3,4)) 

lapply(mtcars[2:12], boxplot)   # applying the function to all the columns
