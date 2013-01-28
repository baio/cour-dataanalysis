set.seed(41)
cauchyValues = rcauchy(100)
set.seed(415)
cauchy = sample(cauchyValues,size=10,replace=T);
print(cauchy)