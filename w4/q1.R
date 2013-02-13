
#download.file("https://spark-public.s3.amazonaws.com/dataanalysis/movies.txt", "movies.txt", method="curl")
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,1))
score <- as.numeric(movies$score)
box <- as.numeric(movies$box_office)
#hist(score,col="blue")
#hist(log(box),col="blue")
plot(score~box)
lm1 <- lm(score ~ box)
summary(lm1)
abline(lm1,col="red",lwd=3)




