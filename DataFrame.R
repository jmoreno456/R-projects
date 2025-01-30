# vector of variable name
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

# vector of ABC poll results
pollresultsABC <- c(4, 62, 51, 21, 2, 14, 15)

# vector of CBS poll results
pollresultsCBS <- c(12, 75, 43, 19, 1, 21, 19)

# use class() function to check if character or numeric
# 'Name' should return class of character strings
# 'pollresultsABC' should return class of numeric values
class(Name)
class(pollresultsABC)

# use is.data.frame() function to confirm vector is not a data frame
is.data.frame(Name)

# create dataframe of vectors created above
df <- data.frame(Name, pollresultsABC, pollresultsCBS)
