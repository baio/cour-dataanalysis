#quantile

data <- read.csv("data.csv")
quantile(data$YBL, na.rm = T)
#table(ranges,useNA="ifany")