#lm, cofounder
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(3,1))
movies$score <- as.numeric(movies$score)
movies$box_office <- as.numeric(movies$box_office)
movies$running_time <- as.numeric(movies$running_time)

plot(movies$score ~ movies$box_office)
lm1<-lm(movies$score ~ movies$box_office + movies$running_time)
abline(lm1,col="red",lwd=3)
lm2<-lm(movies$score ~ movies$box_office)
abline(lm2,col="green",lwd=3)

plot(movies$score ~ movies$running_time)
lm3<-lm(movies$score ~ movies$running_time)
abline(lm3,col="blue",lwd=3)

plot(movies$box_office ~ movies$running_time)
lm3<-lm(movies$box_officee ~ movies$running_time)
abline(lm3,col="blue",lwd=3)

