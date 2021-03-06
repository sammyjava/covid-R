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
npts = nrow(deaths)
xmin = 35
xmax = npts
ymin = 100
ymax = max(deaths,na.rm=TRUE)

## start with Hubei since it's the largest
plot(deaths[,places[1]], log="y", pch=pch[1], col=col[1],
     xlim=c(xmin, xmax),
     ylim=c(ymin, ymax),
     ylab="CUMULATIVE COVID-19 DEATHS",
     xlab="Days after 22 Jan 2020",
     yaxp=c(1,6,1), yaxs="r", 
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date(),"MDT")
     )

## continue with the rest
for (i in 2:length(places)) {
    points(deaths[,places[i]], pch=pch[i], col=col[i])
}

## ## guide lines for various doubling times -- change the position of "Doubling time" as time goes on
## xMean = 0
## y = 100
## for (i in 1:4) {
##     f = 2.0^(1/i)
##     lines(xmin:npts, f^((xmin:npts-xmin)), col="gray")
##     x = log(100)/log(f) + xmin
##     days = "days"
##     if (i==1) days = "day"
##     text(x, y, paste(i,days), col="gray", pos=1, offset=0.2)
##     xMean = xMean + x
## }
## xMean = xMean/4
## text(xMean, y*2, "doubling time", col="gray", pos=1)

## the legend
legend(x="topleft", bty="o", bg="white",
       legend=paste(places,deaths[npts,places]),
       pch=pch, col=col, cex=1.0)


