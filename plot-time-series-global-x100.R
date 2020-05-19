## plot selected regions across time, offset by when they hit 100 deaths

## may as well refresh the load
source("load-time-series-global-deaths.R")

## places we'd like to see that have been loaded into the deaths dataframe, plus x100 offsets
source("places.R")

## los colores y simbolos
col = c(1:6, 1:6, 1:6, 1:6)
pch = c(rep(1,6), rep(2,6), rep(3,6), rep(4,6))

## back off from scientific notation
options(scipen=5)

## optional data offset
npts = nrow(deaths)
xmin = 0
xmax = 80
ymin = 90
ymax = max(deaths,na.rm=TRUE)

## start with Hubei since it's the largest
plot(c(1:npts)-x100[1], deaths[,places[1]], log="y", pch=pch[1], col=col[1],
     xlim=c(xmin, xmax),
     ylim=c(ymin, ymax),
     ylab="CUMULATIVE COVID-19 DEATHS",
     xlab="Days after reaching 100 deaths",
     yaxp=c(1,6,1), yaxs="r", 
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date(),"MDT")
     )

## continue with the rest
for (i in 2:length(places)) {
    points(c(1:npts)-x100[i], deaths[,places[i]], pch=pch[i], col=col[i])
}

## the legend
legend(x="topleft", bty="n",
       legend=paste(places,deaths[npts,places]),
       pch=pch, col=col)

