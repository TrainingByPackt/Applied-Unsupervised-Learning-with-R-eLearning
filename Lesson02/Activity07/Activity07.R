library(cluster)

sd<-read.delim('./Lesson02/Activity07/seeds_dataset.txt')
sd_c<-sd[,1:7]

h.res<-hclust(dist(sd_c),"ave")
plot(h.res)

memb <- cutree(h.res, k = 3)
results<-table(sd$X1,memb)
results


memb <- cutree(h.res, k = 3)
results<-table(sd$X1,memb)
results



