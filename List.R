# Create a vector
v <- c(1,2,3,4,5)
v

# Create a matrix
m <- matrix(1:10,nrow=2)
m

# Create a data frame
df <- women
df

# Create a list
li <- list(v,m,df)
li

# assign names to the list item
li <- list(sample_vec = v,sample_mat = m, sample_df = df)
li

#You can use bracket notation to show objects in a list, and double brackets to actually grab the objects form the list, for example:

# Single brackets
li[1] # By index

# By name
vecAsList <- li['sample_vec']
# Notice the type!
class(vec) #List

# Use double brackets to actually grab the items
vec <- li[['sample_vec']]
class(vec) #Numeric


# Can also use $ notation
v <- li$sample_vec
class(v) #Numeric


# You can also index on top of this once you've selected the object from the list, for example:

li[['sample_vec']][1] # Second set of indexing

# Matrix 
mat = li[['sample_mat']]
mat
mat[1,]
mat[1:2, 1:2]

# Data frame
df = li[['sample_df']]['height']
df

double_list <- c(li,li)
double_list

str(double_list)
