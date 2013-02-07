#conditional subsetting with which
data <- read.csv("data.csv")
agricultureLogical <- data$ACR ==3 & data$AGS == 6
head(which(agricultureLogical))