#lm, confidence interval(inference basic)
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)


#download.file("https://spark-public.s3.amazonaws.com/dataanalysis/movies.txt", "movies.txt", method="curl")
movies <- read.table("movies.txt",sep="\t",header=T,quote="")
head(movies)

par(mfrow=c(1,1))
score <- as.numeric(movies$score)
box <- as.numeric(movies$box_office)
running <- as.numeric(movies$running_time)
plot(box~running)
lm1 <- lm(score ~ running + box)
abline(lm1,col=2)
#abline(a=50, b=2, col = 2)

summary(lm1)

