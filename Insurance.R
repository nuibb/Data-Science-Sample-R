df <- read.csv('SwedishMotorInsurance.csv')
df
View(df)

summary(df)

any(is.na(df))

sum(df$Payment)

# Grab only numeric columns
num.cols <- sapply(df, is.numeric)
head(num.cols)

library(ggplot2)
library(ggthemes)
library(dplyr)

# Filter to numeric columns for correlation
cor.data <- cor(df[,num.cols])
cor.data

library(corrplot)
library(corrgram)

corrplot(cor.data,method='color')
