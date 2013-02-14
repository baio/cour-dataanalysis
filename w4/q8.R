movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,1))
movies$score <- as.numeric(movies$score)
#movies$rating <- as.numeric(movies$rating)
movies$running <- as.numeric(movies$running_time)
plot(movies$running, movies$score, col=movies$rating, pch=19)

unique(movies$rating)
as.factor(movies$rating)

lm1 <- lm(movies$score ~ movies$running * as.factor(movies$rating))
abline(a=lm1$coeff[[1]],b=lm1$coeff[[2]],col=5,lwd=3)
abline(a=lm1$coeff[[1]],b=lm1$coeff[[3]],col=6,lwd=3)

lm1$coeff[[2]] + lm1$coeff[[6]]


#movies1 <- movies[movies$rating == "G",]
#lm2 <- lm(movies1$score ~ movies1$running)
#abline(lm2,col=1,lwd=3)

#movies2 <- movies[movies$rating == "PG",]
#lm3 <- lm(movies2$score ~ movies2$running)
#abline(lm3,col=2,lwd=3)

#movies3 <- movies[movies$rating == "PG-13",]
#lm4 <- lm(movies3$score ~ movies3$running)
#abline(lm4,col=3,lwd=3)

#movies4 <- movies[movies$rating == "R",]
#lm5 <- lm(movies4$score ~ movies4$running)
#abline(lm5,col=4,lwd=3)


#movies$rating
#points(movies$score,movies$running,pch=19,col=c(1,2,3,4,5,6,7,8))
#lm1 <- lm(score ~ running)
#abline(lm1,col="red",lwd=3)

summary(lm1)
#summary(lm2)
#summary(lm3)
#summary(lm4)
#summary(lm5)
