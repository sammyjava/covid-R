## plot selected regions across time
##
##     Province.State Country.Region X3.19.20
## 12                        Germany    15320
## 17                          Italy    41035
## 18                         Sweden     1439
## 19                          Spain    17963
## 21                        Belgium     1795
## 32                    Switzerland     4075
## 33                        Austria     2013
## 40                         Norway     1746
## 99      Washington             US     1376
## 100       New York             US     5365
## 155          Hubei          China    67800
## 156                          Iran    18407
## 157                  Korea, South     8565
## 158         France         France    10871
## 159      Guangdong          China     1378
## 160          Henan          China     1273
## 161       Zhejiang          China     1233
## 162          Hunan          China     1018
## 171        Denmark        Denmark     1151
## 404 United Kingdom United Kingdom     2689
## 441    Netherlands    Netherlands     2460

## may as well refresh the load
source("load-time-series-deaths.R")
source("load-time-series-recovered.R")

## places we'd like to see that have been loaded into the recovered dataframe
places = c("Hubei", "Italy", "Iran", "Spain", "France", "SKorea", "NY", "UK", "Sweden", "Denmark", "WA", "CA", "Brazil", "WI", "AZ", "NM")

## los simbolos
pch = c(rep(1,8), rep(2,8), rep(3,8), rep(4,8))

## back off from scientific notation
options(scipen=5)

## start with Hubei since it's the largest
plot(deaths[,places[1]]/recovered[,places[1]],
     pch=pch[1], col=1,
     ylim=c(1e-2,1e2), log="y",
     ylab="COVID-19 DEATHS / RECOVERED",
     xlab="Days after 22 Jan 2020",
     main="Data: GitHub CSSEGISandData/COVID-19",
     sub=paste("plotted",date(),"MDT")
     )

## continue with the rest
for (i in 2:length(places)) {
    points(deaths[,places[i]]/recovered[,places[i]], pch=pch[i], col=i)
}

## the legend
legend(x="topleft", bty="n", legend=places, pch=pch, col=1:length(places))

