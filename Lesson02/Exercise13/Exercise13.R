# use it only the first time if library is not installed already
# install.packages("cluster")

library("cluster")

iris_data<-iris[,3:5]

h.clus<-diana(iris_data, metric="euclidean")
pltree(h.clus, cex = 0.6, main = "Dendrogram of divisive clustering")

clusterCut <- cutree(h.clus, 2)
table(clusterCut, iris_data$Species)

