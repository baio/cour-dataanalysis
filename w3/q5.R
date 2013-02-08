#svd, remove matrx columns
#install.packages("ElemStatLearn")
library(ElemStatLearn)
data(zip.train)
im8 = t(zip2image(zip.train,8))
im18 = zip2image(zip.train,18)
par(mfrow=c(2,2))
image(im8)
image(im18)
#plot(colMeans(im8),xlab="Column",ylab="Col Mean",pch=19)
#plot(rowMeans(im8),1:16,,xlab="Row",ylab="Row Mean",pch=19)

svd8 <- svd(im8)
svd18 <- svd(im18)

plot(svd8$d^2/sum(svd8$d^2),xlab="Column",ylab="Percent of variance explained",pch=19)
plot(svd18$d^2/sum(svd18$d^2),xlab="Column",ylab="Percent of variance explained",pch=19)

svd8$d^2/sum(svd8$d^2)
svd18$d^2/sum(svd18$d^2)

#hh <- hclust(dist(im8))
#im8x <- im8[hh$order,]
#im8
#s <- unique(scale(im8))
#s <- s[,complete.cases(t(s))] 
#each column has own unit since doesn't bother about scaling by row neighbours.
#so scaling only by columns and if column has the same value everywhere, dont scale it just remove.
#s
#svd1 <- svd(s)
#svd1$d
#image(t(im8x),pch=19)
#plot(svd1$d,xlab="Column",ylab="Singluar value",pch=19)
#svd1$v
#plot(svd1$d^2/sum(svd1$d^2),xlab="Column",ylab="Percent of variance explained",pch=19)
#plot(svd1$v[,1],xlab="Column",ylab="First right singular vector",pch=19)
#plot(svd1$u[,1],1:16,,xlab="Row",ylab="First left singular vector",pch=19)

#plot(svd1$u[,2],xlab="Column",ylab="First left singular vector",pch=19)
#plot(svd1$u[,3],xlab="Column",ylab="First left singular vector",pch=19)
#plot(svd1$u[,1],1:16,,xlab="Row",ylab="First right singular vector",pch=19)

#image(im18)
#heatmap(im8)
#heatmap(im18)