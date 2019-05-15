# Read CSV, note the delimiter (sep)
df <- read.csv('student-mat.csv',sep=';')
h <- head(df)
summary(df)
View(df)

# Cleaning data
any(is.na(df)) # Check for NA values

# Finding out categorical features
str(df)

class(df)
colnames(h)
class(colnames(h))

# Exploratory Data Analysis
library(ggplot2)
library(ggthemes)
library(dplyr)

# Grab only numeric columns
num.cols <- sapply(df, is.numeric)
num.cols
class(num.cols)
numericOnly <- df[,num.cols]
numericOnly

# Filter to numeric columns for correlation
cor.data <- cor(df[,num.cols])
cor.data
View(cor.data)

library(corrplot)
library(corrgram)

corrplot(cor.data,method='color')
