# install.packages("klaR")
set.seed(1)
library(klaR)

ms <- read.csv('./Lesson02/Activity05/mushrooms.csv')
dim(ms)

summary.data.frame(ms)
ms_k <- ms[, 2:23]

kmodes_ms <- kmodes(ms_k, 2)

result <- table(ms$class, kmodes_ms$cluster)
result
