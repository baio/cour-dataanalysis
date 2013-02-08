#hierarchical clustering
library(datasets)
data(iris)

irisSubset <- as.matrix(iris[,1:4])
distr <- dist(irisSubset)
hClustering <- hclust(distr)
plot(hClustering)
rect.hclust(hClustering, h= 3)
#dist(irisSubset)
#str(irisSubset)
#dist <- dist(irisSubset)

#hClustering <- hclust(irisSubset)

