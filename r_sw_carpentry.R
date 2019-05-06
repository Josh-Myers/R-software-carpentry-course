# Software carptentry 'gapminder' analysis
library(tidyverse)
library(gapminder)

# use quotes for help on special operators
?"%in%"

# Without any arguments, vignette() will list all vignettes for all installed packages; 
# vignette(package="package-name") will list all available vignettes for package-name, 
# and vignette("vignette-name") will open the specified vignette.

## ??function_name is fuzzy search
## e.g. 
??csv # will look up csv related functions 

# dput
# Will dump the data you’re working with into a format so that it can be copy and pasted by anyone else into their R session.

sessionInfo()

## matrix
# a matrix full of zeros:
matrix_example <- matrix(0, ncol=6, nrow=3)
matrix_example

matrix(1:50, ncol=5, nrow=10, byrow = TRUE) # to fill by row

## dataframe
# a data.frame is a special list in which all the vectors must have the same length.
var1 = seq(10)
var2 = seq(1:20, by=2)
df = cbind.data.frame(var1, var2)

# we can drop the column by using the index name.
drop <- names(df) %in% c("var2")
df = df[,!drop]

# columns are vectors and rows are lists

# rbind can result in complicated row names
rownames(df) <- NULL # reset row numbers - rename as sequential numbers

# gapminder data
gapminder <- read.csv("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv") # read directly from web address
str(gapminder)
summary(gapminder)
dim(gapminder)
head(gapminder)
tail(gapminder, n = 15)
gapminder[sample(nrow(gapminder), 5), ] # check some rows from the middle

## indexing
# the square brackets operator is a function. For vectors (and matrices), it means “get me the nth element”.

# Using [ will always return a list
xlist <- list(a = "Software Carpentry", b = 1:10, data = head(iris))
xlist[1]
# This returns a list with one element.
# To extract individual elements of a list, you need to use the double-square bracket function: [[.
xlist[[1]]
# now the result is a vector, not a list.
# The $ function is a shorthand way for extracting elements by name:
      ### [[ is not equivalent to $ because $ can only index by name - [[ can be number or name


xlist <- list(a = "Software Carpentry", b = 1:10, data = head(iris))
xlist[[2]][2]
