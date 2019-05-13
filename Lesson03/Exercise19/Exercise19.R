# use it only the first time if library is not installed already
# install.packages("kdensity")
library('kdensity')

y1 <- rnorm(100,mean = 0, sd = 1)
y2<-rnorm(100, mean = 3, sd=.2)

y3<-c(y1,y2)
plot(y3)

hist(y3)

dist<-kdensity(y3,kernel = "gaussian")
plot(dist)