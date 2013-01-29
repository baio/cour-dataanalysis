#conditional subsetting
data <- read.csv("data.csv")
nrow(data[(data$BDS == 3 | is.na(data$BDS)) & (data$RMS == 4 | is.na(data$RMS)) & (!is.na(data$RMS) & !is.na(data$BDS)), ])
nrow(data[(data$BDS == 2 | is.na(data$BDS)) & (data$RMS == 5 | is.na(data$RMS)) & (!is.na(data$RMS) & !is.na(data$BDS)), ])
nrow(data[(data$BDS == 2 | is.na(data$BDS)) & (data$RMS == 7 | is.na(data$RMS)) & (!is.na(data$RMS) & !is.na(data$BDS)), ])



