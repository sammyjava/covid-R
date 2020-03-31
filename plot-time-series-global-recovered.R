## plot selected regions across time

## may as well refresh the load
source("load-time-series-global-recovered.R")

## places we'd like to see that have been loaded into the confirmed dataframe; sorted by total deaths
places = c("Italy", "Spain", "China", "Iran", "France", "US", "UK", "Germany", "SKorea", "Sweden", "Denmark", "Canada", "Poland", "Australia", "Russia")

## los simbolos
pch = c(rep(1,8), rep(2,8), rep(3,8), rep(4,8))

## back off from scientific notation
options(scipen=5)

## start with Hubei since it's the largest
plot(recovered[,places[1]], log="y", pch=pch[1], col=1,
     ylim=c(1,max(recovered)),
     ylab="COVID-19 RECOVERED",
     xlab="Days after 22 Jan 2020",
     yaxp=c(1,6,1), yaxs="r", 
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date(),"MDT")
     )

## continue with the rest
for (i in 2:length(places)) {
    points(recovered[,places[i]], pch=pch[i], col=i)
}

## guide lines for various doubling times -- change the position of "Doubling time" as time goes on
xMean = 0
y = 100
for (i in 1:4) {
    f = 2.0^(1/i)
    lines(0:nrow(recovered), f^(0:nrow(recovered)), col="gray")
    x = log(100)/log(f)
    days = "days"
    if (i==1) days = "day"
    text(x, y, paste(i,days), col="gray", pos=1, offset=0.2)
    xMean = xMean + x
}
xMean = xMean/4
text(xMean, y*2, "doubling time", col="gray", pos=1)

## the legend
legend(x="topleft", bty="n", legend=places, pch=pch, col=1:length(places))

