#lm, confidence interval(inference basic)
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)


#download.file("https://spark-public.s3.amazonaws.com/dataanalysis/movies.txt", "movies.txt", method="curl")
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,2))
box <- as.numeric(movies$box_office)
running <- as.numeric(movies$running_time)
plot(box~running)
lm1 <- lm(box ~ running)
abline(lm1,col="red",lwd=3)

movies1 <- movies[movies$running_time <= 200,]
box1 <- as.numeric(movies1$box_office)
running1 <- as.numeric(movies1$running_time)
plot(box1~running1)
lm2 <- lm(box1 ~ running1)
abline(lm2,col="red",lwd=3)

summary(lm1)
summary(lm2)
