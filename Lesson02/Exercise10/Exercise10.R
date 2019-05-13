# install.packages("klaR")
library(klaR)

bc_data<-read.csv('./Lesson02/Exercise10/breast_cancer.csv',header = FALSE)
k_bc_data<-bc_data[,2:10]
head(k_bc_data)

k.centers<-kmodes(k_bc_data,2,iter.max = 100)
k.centers
