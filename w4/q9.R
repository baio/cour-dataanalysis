summary(warpbreaks)

#str(d)
#?warpbreaks
d <- warpbreaks#[warpbreaks$tension == "M" | warpbreaks$tension == "H",]

#lm1 <- aov(d$breaks ~ d$tension)

#TukeyHSD(lm1)

lm1 <- aov(d$breaks ~ d$tension)
TukeyHSD(lm1)

lm2 <- lm(d$breaks ~ relevel(d$tension,ref="H"))
confint(lm2)