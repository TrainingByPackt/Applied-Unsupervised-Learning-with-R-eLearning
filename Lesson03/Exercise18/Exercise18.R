# use it only the first time if library is not installed already
# install.packages("kdensity")
library('kdensity')


x<- c(1,2,3,4,5)
y<-c(0,0,0,0,0)
plot(x,y)
dist <- kdensity(x, bw=.35)
plot(dist)


dist <- kdensity(x, bw=.5)
plot(dist)
