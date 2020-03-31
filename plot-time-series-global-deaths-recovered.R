## plot selected regions across time

## may as well refresh the load
source("load-time-series-global-deaths.R")
source("load-time-series-global-recovered.R")

## places we'd like to see that have been loaded into the confirmed dataframe; sorted by total deaths
places = c("Italy", "Spain", "China", "Iran", "France", "US", "UK", "Germany", "SKorea", "Sweden", "Denmark", "Canada", "Poland", "Australia", "Russia")

## los simbolos
pch = c(rep(1,8), rep(2,8), rep(3,8), rep(4,8))

## back off from scientific notation
options(scipen=5)

## axes limits from max(deaths) and max(recovered) with a bit extra for labels
xmax = max(recovered)*2
ymax = max(deaths)*10 

plot(recovered[,places[1]], deaths[,places[1]], col=1, pch=pch[1],
     log="xy",
     xlim=c(1,xmax),
     ylim=c(1,ymax),
     xlab="COVID-19 RECOVERED",
     ylab="COVID-19 DEATHS",
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date(),"MDT")
     )

## continue with the rest
for (i in 1:length(places)) {
    points(recovered[,places[i]], deaths[,places[i]], pch=pch[i], col=i)
}

## the legend
legend(x="topleft", bty="n", legend=places, pch=pch, col=1:length(places))

## guide lines for various rates
xmax = 100000
for (i in c(1,2,4,8,16,32)) {
    lines(1:xmax, (1:xmax)/i, col="gray")
    text(xmax, xmax/i, paste("1/",i,sep=""), col="gray", pos=1, offset=0.2)
}
