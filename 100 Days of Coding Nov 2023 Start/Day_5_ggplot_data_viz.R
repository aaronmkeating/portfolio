#Day 5
#Project: Create a simple data visualization using ggplot2 in R

#I will again use the mtcars data set
library(car)
data <- mtcars

#I want to look at a summary of the data to get a good idea of what can be plotted
summary(mtcars)

#I will first look at the distribution of some of the variables:
ggplot(mtcars, aes(mpg)) +
  geom_histogram()


#as before, i will look at a scatter plot of the mpg vs hp
ggplot(mtcars, aes(hp, mpg, color = cyl, size = wt)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Miles Per Gallon", 
       y = "MPG",
       x = "Horsepower") +

#I added a color component for cylinders and a size component of weight of the vehicle
#along with a trend line

#This cart shows that the heavier the vehicle along with the more horsepower and and more cylinders
#the lower the mpg

