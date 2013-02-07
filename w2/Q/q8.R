#strsplit on dataset names
data <- read.csv("data.csv")
splitNames = strsplit(names(data),"wgtp")
splitNames[123]
#sapply(splitNames,function(x){x[2]})[123]
