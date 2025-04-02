tukey_multiple <- function(x) { # create function that takes x as input
  outliers <- array(TRUE, dim = dim(x)) # create an array of TRUE values of dimension x
  for(j in 1:ncol(x)) { # loops through the column j of x
    outliers[, j] <- outliers[, j] & tukey_multiple(x[, j]) # updates outliers[, j] each time it is found 
  }
  outlier.vec <- vector(length = nrow(x)) # creates vector with row length of x
  for (i in 1:nrow(x)) { # loops i through rows of x
    outlier.vec[i] <- all(outliers[i, ]) # checks if all values are true and updates outlier.vec[i, ] every time it is found
  }
  return(outlier.vec) # return outlier.vec
}
