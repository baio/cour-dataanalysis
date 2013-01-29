#read sata from url
con = url("http://simplystatistics.tumblr.com", "r")
simplyStats <- readLines(con, n=150)
close(con)
head(simplyStats)
nchar(simplyStats[2])
nchar(simplyStats[45])
nchar(simplyStats[122])
