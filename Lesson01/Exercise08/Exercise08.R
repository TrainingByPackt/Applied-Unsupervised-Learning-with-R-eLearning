library("factoextra")

iris_data<-iris[,1:2]
fviz_nbclust(iris_data, kmeans, method = "wss", k.max=20)