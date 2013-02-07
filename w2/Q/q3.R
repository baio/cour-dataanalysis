#download data
#download.file("https://dl.dropbox.com/u/7710864/data/csv_hid/ss06hid.csv", "data.csv", method="curl")
#download.file("https://dl.dropbox.com/u/7710864/data/PUMSDataDict06.pdf", "PUMSDataDict06.pdf", method="curl")
data <- read.csv("data.csv")
table(data$VAL)[[24]]
