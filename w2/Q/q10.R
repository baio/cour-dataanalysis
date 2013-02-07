#download.file("https://dl.dropbox.com/u/7710864/data/csv_hid/ss06pid.csv ", "data_extra.csv", method="curl")
data <- read.csv("data.csv")
dataex <- read.csv("data_extra.csv")


m <- merge(data, dataex, by="SERIALNO", all=T)
head(m)
dim(m)
