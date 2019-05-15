cars
summary(cars)
plot(cars, col='blue', pch=20, cex=2, main="Relationship between Speed and Stopping Distance for 50 Cars",
     xlab="Speed in mph", ylab="Stopping Distance in feet")
?plot

set.seed(122)
speed.c = scale(cars$speed, center=TRUE, scale=FALSE)
speed.c
mod1 = lm(formula = dist ~ speed.c, data = cars)
summary(mod1)
?scale
