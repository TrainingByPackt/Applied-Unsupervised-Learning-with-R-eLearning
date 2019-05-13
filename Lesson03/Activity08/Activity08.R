# use it only the first time if library is not installed already
# install.packages("kdensity")
library(kdensity)

df<-iris
df1<-subset(df,Species=='setosa')

dist <- kdensity(df1$Sepal.Length)
plot(dist)

dist <- kdensity(df1$Sepal.Width)
plot(dist)
