# check directory
getwd()
# load ggplot2 package
library(ggplot2)

# create data frame
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
# bad = 1, good = 0
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
# low = 0, high = 1
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)
# make vectors into data frame
mainDF <- data.frame(Frequency, BP, First, Second, FinalDecision)
# create boxplot
boxplot(BP ~ FinalDecision, data = mainDF, main = "BP rated as 1 for bad and 0 for good", xlab = "FinalDecision", ylab = "BP", col = "purple")
# create histogram
hist(BP, xlab = "Blood pressure range", col = "green")