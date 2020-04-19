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
xmin = 35
xmax = nrow(deaths)
ymin = 1
ymax = max(deaths[npts,places]/popmil,na.rm=TRUE)

## start with Hubei since it's the largest
plot(deaths[,places[1]]/popmil[1], log="y", pch=pch[1], col=col[1],
     xlim=c(xmin, xmax),
     ylim=c(ymin, ymax),
     ylab="CUMULATIVE COVID-19 DEATHS PER MILLION",
     xlab="Days after 22 Jan 2020",
     yaxp=c(1,6,1), yaxs="r", 
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date(),"MDT")
     )

## continue with the rest
for (i in 2:length(places)) {
    points(deaths[,places[i]]/popmil[i], pch=pch[i], col=col[i])
}

## the legend
legend(x="topleft", bty="o", bg="white",
       legend=paste(places,round(deaths[npts,places]/popmil,1)),
       pch=pch, col=col, cex=1.0)


