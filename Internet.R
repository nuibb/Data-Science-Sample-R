# Loading
library("readxl")

# read xlsx file
data <- read_excel("Internet_Dataset.xlsm", 1)
data
head(data)
typeof(data) #list
str(data)

# Analyze each variable of the data to get a basic understanding of the dataset and to prepare for further analysis
sum = summary(data)
sum
View(sum)

Bounces <- data['Bounces']
Bounces
max(Bounces)

Continent <- data[['Continent']]
class(Continent)
Continent[1]

# Continent from which most viewer came
factor.cont <- factor(Continent)
factor.cont
levels(factor.cont)

s = summary(factor.cont)
s
class(s)
View(s)
m = max(s)
m

# source group from which most viewer came
Sourcegroup <- data[['Sourcegroup']]
source.group <- factor(Sourcegroup)
source.group
levels(source.group)

s = summary(source.group)
s
View(s)
m = max(s)
m

# Whether Unique Page view value depends on visitors

# read xlsx file
data <- read_excel("Table_3.xls", 1)
data
