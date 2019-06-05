library("cluster")
library("factoextra")

iris_data <- iris[, 1:2]
km.res <- pam(iris_data, 3)
fviz_cluster(km,
             data = iris_data,
             palette = "jco",
             ggtheme = theme_minimal())
