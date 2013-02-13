movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,1))

movies <- movies[movies$rating="PG"]
movies$score <- as.numeric(movies$score)
movies$rating <- as.numeric(movies$rating)
movies$running <- as.numeric(movies$running_time)
plot(movies$running, movies$score, pch=19)
lm1 <- lm(movies$score ~ movies$running)
abline(lm1,col="red",lwd=3)

sum(lm1$coeff)
#abline(c(lm1$coeff[1],lm1$coeff[2]),col="red",lwd=3)

#movies$rating
#points(movies$score,movies$running,pch=19,col=c(1,2,3,4,5,6,7,8))
#lm1 <- lm(score ~ running)
#abline(lm1,col="red",lwd=3)

#PG - 2

summary(lm1)
