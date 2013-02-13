#lm, confidence interval(inference basic)
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)


#download.file("https://spark-public.s3.amazonaws.com/dataanalysis/movies.txt", "movies.txt", method="curl")
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,1))
score <- as.numeric(movies$score)
box <- as.numeric(movies$box_office)
plot(score~box)
lm1 <- lm(score ~ box)
lm1$fitted
summary(lm1)
abline(lm1,col="red",lwd=3)
lines(box,lm1$fitted,col="green",lwd=3)
confint(lm1,level=0.9)
