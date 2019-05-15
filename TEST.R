# Loading
library("readxl")

# xlsx files
my_data <- read_excel("VCC GW cloud data format.xlsx", 1)
my_data
head(my_data)

data <- read.csv("data.csv")
head(data)
print(data)
summary(data)
View(data)
