#kmean clustering
#download.file("https://spark-public.s3.amazonaws.com/dataanalysis/quiz3question4.csv", "q4.csv", method="curl")
data <- read.csv("q4.csv")
#par(mar=rep(0.2,4))
data$X = NULL  

kmeansObj <- kmeans(data,centers=2)
plot(data$x,data$y, cex=1, pch=19, col=kmeansObj$cluster)
points(kmeansObj$centers,col=1:2,pch=3,cex=3,lwd=3)