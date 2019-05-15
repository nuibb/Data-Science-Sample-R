
library("readxl")

#Importing the dataset
dataset = read.csv('HospitalCosts.csv')
dataset
View(dataset)
class(dataset)

#For problem 01

# 01:a - Age's category of people who frequent the hospital
category = aggregate(TOTCHG ~ AGE,FUN = sum ,data = dataset)
category

# 01:b - maximum expenditure for a specific age group
max(category)


# For problem 02
factory.aprdrg<-as.factor(dataset$APRDRG)
s = summary(factory.aprdrg)
str(factory.aprdrg)
max(s)
df = aggregate(TOTCHG ~ APRDRG,FUN = sum, data = dataset)
df

#For most hospitalization and expenditure
df[which.max(df$TOTCHG),]

#For problem 03

#Cleaning dataset by removing dataset
dataset = na.omit(dataset)
dataset
any(is.na(dataset))

factor.race = as.factor(dataset$RACE)
model = aov(TOTCHG~RACE,data = dataset)
model

summary(model)

#For max hospital cost per race
summary(dataset$RACE)

# For problem 04
dataset$FEMALE = as.factor(dataset$FEMALE)

#model
fmodel = lm(TOTCHG ~ AGE + FEMALE, data = dataset)
summary(fmodel)

# comparing genders
summary(dataset$FEMALE)


# For problem 05

dataset$RACE = as.factor(dataset$RACE)
modelForLengthStay = lm(LOS ~ AGE + FEMALE + RACE, data = dataset)
summary(modelForLengthStay)

#For problem 6
modelForPredictedVar = lm(TOTCHG ~ AGE + FEMALE + RACE + LOS + APRDRG, data = dataset)
summary(modelForPredictedVar)


