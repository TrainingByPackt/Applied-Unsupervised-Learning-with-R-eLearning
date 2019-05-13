# use it only the first time if library is not installed already
# install.packages("cluster")
library(cluster)

iris_data<-iris[,3:5]

h.clus<-hclust(stats::dist(iris_data[, 1:2]),method="complete")
plot(h.clus)

clusterCut <- cutree(h.clus, 3)
table(clusterCut, iris_data$Species)

h.clus<-hclust(stats::dist(iris_data[, 1:2]),method = "single")
plot(h.clus)

clusterCut <- cutree(h.clus, 3)
table(clusterCut, iris_data$Species)

h.clus<-hclust(stats::dist(iris_data[, 1:2]),method = "average")
plot(h.clus)

clusterCut <- cutree(h.clus, 3)
table(clusterCut, iris_data$Species)

h.clus<-hclust(stats::dist(iris_data[, 1:2]),method = "centroid")
plot(h.clus)

clusterCut <- cutree(h.clus, 3)
table(clusterCut, iris_data$Species)
