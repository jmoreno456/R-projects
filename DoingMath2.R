# create matrices
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)
# find A + B
A + B
# find A - B
A - B
# create diagonal matrix
# values are 4, 1, 2, 3
C <- c(4, 1, 2, 3)
diag_matrix <- diag(C)
# generate the following matrix
new_matrix <- diag(3, 5, 5)
# fills rows 2 to 5 in the 1st column with the number 2
new_matrix[2:5, 1] <- 2
# fills the 1st row in columns 2 to 5 with 1
new_matrix[1, 2:5] <- 1