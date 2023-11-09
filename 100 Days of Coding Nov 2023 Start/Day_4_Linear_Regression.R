#Day 4
#Project: Implement linear regression in R with a dataset.

#For this, i will use the mtcars dataset
library(carData)
data <- mtcars

#I want a quick snapshot of the data I am working with
summary(mtcars)
head(mtcars)
str(mtcars)
cormatrix <- cor(mtcars)

#I have chosen to look at the relationship between mpg and cylinders first
#they have a correlation coefficient of -0.852, indicating that:
#the more cylinders, the lower the MPG and the higher the MPG, the lower the cyl


#predictor variable = cyl
#response variable = mpg
model <- lm(mpg ~ cyl, data = mtcars)
summary(model)

#the model is statistically significant (p = 0)
#No i want to visualize the model:
library(ggplot2)
ggplot(mtcars, aes(cyl, mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

#mpg was also correlated with weight, hp, and disp (-0.867, -0.776, -0.852 respectively)
#I also want to look at a multiple linear regression with these variables

model_multi <- lm(mpg ~ cyl + disp + wt + hp, data = mtcars)
summary(model_multi)

#with this model, wt and cylinders were considered statistically significant predictors
#at 0.05 and 0 respectively. 

model_multi2 <- lm(mpg ~ cyl + wt, data = mtcars)
summary(model_multi2)
#the significance level increased with slimming down to these two variables. 

#this visualization looks at mpg vs wt
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

