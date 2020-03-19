## plot selected regions across time

## places we'd like to see that have been loaded into the confirmed dataframe
places = c("Hubei", "Iran", "Italy", "Spain", "France", "UK", "WA", "CA", "NY", "WI", "NM")

## start with Hubei since it's the largest
plot(confirmed[,places[1]], log="y", pch=19, col=1,
     ylim=c(1,max(confirmed[,places[1]])),
     ylab="Confirmed COVID-19 Cases",
     xlab="Days after 22 Jan 2020",
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date())
     )

## continue with the rest
for (i in 2:length(places)) {
    points(confirmed[,places[i]], pch=19, col=i)
}

## guide lines for various growth rates
lines(0:nrow(confirmed), 2.00^(0:nrow(confirmed)), col="gray")
lines(0:nrow(confirmed), 1.75^(0:nrow(confirmed)), col="gray")
lines(0:nrow(confirmed), 1.50^(0:nrow(confirmed)), col="gray")
lines(0:nrow(confirmed), 1.25^(0:nrow(confirmed)), col="gray")
text(10, 2.00^10, "100% per day", col="gray", pos=4, offset=0.1)
text(10, 1.75^10, "75% per day", col="gray", pos=4, offset=0.1)
text(10, 1.50^10, "50% per day", col="gray", pos=4, offset=0.1)
text(10, 1.25^10, "25% per day", col="gray", pos=4, offset=0.1)

## the legend
legend(x="topleft", bty="n", legend=places, pch=19, col=1:length(places))

