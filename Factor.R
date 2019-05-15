
# Nominal categorical variable
animal <- c('d','c','d','c','c')
id <- c(1,2,3,4,5)
factor.ani <- factor(animal)
# Will show levels as well on RStudio or R Console
factor.ani
levels(factor.ani)
summary(factor.ani)

# Ordinal categorical variable
temps <- c('cold','med','cold','med','hot','hot','cold')
fact.temp <- factor(temps,ordered=TRUE,levels=c('cold','med','hot'))
fact.temp
summary(temps)
summary(fact.temp)
