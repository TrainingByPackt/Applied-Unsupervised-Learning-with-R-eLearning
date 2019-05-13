library("factoextra") 

iris_data<-iris[,1:2]

km.res<-kmeans(iris_data,3)

fviz_cluster(km.res, data = iris_data,palette = "jco",ggtheme = theme_minimal())
