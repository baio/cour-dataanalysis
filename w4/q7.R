movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,1))
movies$score <- as.numeric(movies$score)
movies$rating <- as.numeric(movies$rating)
movies$running <- as.numeric(movies$running_time)
plot(movies$running, movies$score, col=movies$rating, pch=19)

lm1 <- lm(movies$score ~ movies$running * movies$rating)
abline(a=lm1$coeff[[1]],b=lm1$coeff[[2]],col=2,lwd=3)
abline(a=lm1$coeff[[1]],b=lm1$coeff[[3]],col=3,lwd=3)


#movies$rating
#points(movies$score,movies$running,pch=19,col=c(1,2,3,4,5,6,7,8))
#lm1 <- lm(score ~ running)
#abline(lm1,col="red",lwd=3)

summary(lm1)
