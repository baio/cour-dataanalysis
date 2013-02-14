movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,2))

movies$score <- as.numeric(movies$score)
movies$running_time <- as.numeric(movies$running_time)
movies$box_office <- as.numeric(movies$box_office)
plot(movies$running_time ~ movies$score)
lm1 <- lm(movies$score ~ movies$box_office + movies$running_time)
summary(lm1)
#abline(lm1,col="red",lwd=3)

movies <- movies[movies$running_time < 200,]
plot(movies$running_time ~ movies$score)
lm2 <- lm(movies$score ~ movies$box_office + movies$running_time)
summary(lm2)
