library(factoextra)
library(cluster)

ws<-read.csv('./Lesson01/Activity03/wholesale_customers_data.csv')
ws<-ws[5:6]
clus<-pam(ws,4)
fviz_cluster(clus,data=ws)
clus<-kmeans(ws,4)
fviz_cluster(clus,data=ws)
