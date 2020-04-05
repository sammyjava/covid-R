## plot selected regions across time

## may as well refresh the load
source("load-time-series-global-deaths.R")

## places we'd like to see that have been loaded into the deaths dataframe; SORTED BY TOTAL DEATHS
source("places.R")

## los colores y simbolos
col = c(1:6, 1:6, 1:6, 1:6)
pch = c(rep(1,6), rep(2,6), rep(3,6), rep(4,6))

## back off from scientific notation
options(scipen=5)

## optional data offset
xmin = 30
ymin = 1

## start with Hubei since it's the largest
plot(deaths[,places[1]], log="y", pch=pch[1], col=col[1],
     xlim=c(xmin, nrow(deaths)),
     ylim=c(ymin, max(deaths,na.rm=TRUE)),
     ylab="COVID-19 DEATHS",
     xlab="Days after 22 Jan 2020",
     yaxp=c(1,6,1), yaxs="r", 
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date(),"MDT")
     )

## continue with the rest
for (i in 2:length(places)) {
    points(deaths[,places[i]], pch=pch[i], col=col[i])
}

## guide lines for various doubling times -- change the position of "Doubling time" as time goes on
xMean = 0
y = 100
for (i in 1:4) {
    f = 2.0^(1/i)
    lines(xmin:nrow(deaths), f^((xmin:nrow(deaths)-xmin)), col="gray")
    x = log(100)/log(f) + xmin
    days = "days"
    if (i==1) days = "day"
    text(x, y, paste(i,days), col="gray", pos=1, offset=0.2)
    xMean = xMean + x
}
xMean = xMean/4
text(xMean, y*2, "doubling time", col="gray", pos=1)


## ## guide lines for daily doubling at various starting dates
## f = 2.0
## for (i in 2:6*10) {
##     lines(0:nrow(deaths)+i, f^(0:nrow(deaths)), col="gray")
## }

## the legend
legend(x="topleft", bty="n", legend=places, pch=pch, col=col)

