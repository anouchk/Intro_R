# get system information
Sys.info()

#R version information
R.version

# get working directory
getwd()

# get support / help (it will appear on the right on R studio)
help ('numeric')
?plot

x <- getwd()
b = 4
a = 16
a ==b

######### VECTORS  ##########
# Create a vector 
vector <- c(a,b)

class(vector)
length(vector)

#let's name its elements
names (vector) <- c('truc','machin')

# on peut accéder à un élément de mon vecteur par son index ou par son nom
vector['truc']
vector[1]

# genereate a vector of 100 elements between 0 and 10
random_vector <- runif(n=100 , min =0, max=10)
# create a boulean vector that selects as 'TRUE' only the elements that are smaller than 8
is_smaller_8 <- random_vector < 8
# generate a vector that selects only the elements that are smaller than 8
smaller_8 <- random_vector[is_smaller_8]
# it has 83 elements :
length(smaller_8)

############# MATRIXES #############
# matrix is a 2 dimensions vector
# let's create one
matrix <- matrix(data = random_vector, nrow = 20, byrow = TRUE)
View(matrix)
colnames(matrix) <-c('var1', 'var2', 'var3', 'var4', 'var5')
nrow()
ncol()

############# DATAFRAMES #############
# dataframe
# it's an extension of a matrix, but we can use multiples types in it. 

table <- data.frame(matrix)
#now I can access its variables
table$var1

table$var6 <- head(LETTERS, 20)
View(table)

############# LISTS #############
# Lists
# our generic types, generalisation of a dataframe. It takes whatever data

list <- list() 
# save some text
list [['CEO']] <- 'henry ford'
list [[2]] <- runif(n=100 , min =0, max=10)
list[['A']] <- a

if(){}
ifelse()

############# OTHER STUFF #############

# import a csv
table <- read.csv('/Users/analutzky/Desktop/netflix.csv')
class(table)
dim(table)
# make your life easier :
attach(table)

# see if two datasets are identitcal
identical()

# loop : iterations
for (id in 1:nrow(table)){
	print (past ("I am store index :" id))
}

############# USEFUL COMMANDS #############

# text
paste(month.name[1], month.name[12], sep = "_")
paste0()

collapse()

nchar(month.name)

txt <- month.name
gsub("january", "June", txt)
# look for a certain pattern (par of it)
grep("Ju", txt)

# look for a specific element, exact element
"June" %in% txt

tolower(month.abb)
strsplit()

round(vector, 2)
floor()
ceiling()

sort(txt, decreasing = TRUE)

unique(nchar(month.name))

which()

# when the data is not clean
is.na()
# => c'est un bouléen et après on peut manipuler la matrice
is.nan()
# omit all the na but it deletes all the na rows ! so very careful with it
na.omit()

# system functions
# keep the system busy for 10 seconds
sys.sleep(10)
# returns the current date
Sys.Date()
# returns the current date and time
Sys.time()

# get started with dates
date_sequence <- seq.Date(from = Sys.Date(), to = as.Date("2023-01-31"), by = "day")
# first six corresponding months
head(months(date_sequence))
