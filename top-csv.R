## print the top countries/regions/states
today = ncol(csv)
print(csv[csv[,today]>1000 & !is.na(csv[,today]), c(1,2,today)])
