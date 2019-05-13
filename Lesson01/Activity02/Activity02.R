library(factoextra)

ws<-read.csv('./Lesson01/Activity02/wholesale_customers_data.csv')

ws<-ws[5:6]

clus<-kmeans(ws,2)

fviz_cluster(clus,data=ws)

clus<-kmeans(ws,3)

fviz_cluster(clus,data=ws)

clus<-kmeans(ws,4)

fviz_cluster(clus,data=ws)

clus<-kmeans(ws,5)

fviz_cluster(clus,data=ws)

clus<-kmeans(ws,6)

fviz_cluster(clus,data=ws)
