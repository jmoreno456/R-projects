library(MASS)

# create your two matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# check determinant
# det() is 0, therefore A is singular
# B is not a square matrix so det() is not computed
det(A)
det(B)


# use ginv() function to compute inverse of singular
# and non square matrices
inverse_A <- ginv(A)
inverse_B <- ginv(B)
