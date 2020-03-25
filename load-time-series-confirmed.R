## load the CSSE time series CSVs
##
## time_series_covid19_confirmed_global.csv
## time_series_covid19_deaths_global.csv
##
##     1              2                  3        4    5        6        7        ...
##     Province.State Country.Region     Lat      Long X1.22.20 X1.23.20 X1.24.20 ...
## 1                        Thailand 15.0000  101.0000        2        3        5
## 2                           Japan 36.0000  138.0000        2        1        2
## 3                       Singapore  1.2833  103.8333        0        1        3
## 4                           Nepal 28.1667   84.2500        0        0        0
## 5                        Malaysia  2.5000  112.5000        0        0        0
## 6 British Columbia         Canada 49.2827 -123.1207        0        0        0

## Confirmed (assume that the COVID-19 GitHub repo is next door)
csv = read.csv(file="../COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv", header=TRUE)

## row names are dates
confirmed = data.frame(row.names=sub("X", "", colnames(csv)[-(1:4)]))

## interesting countries
confirmed$Brazil  = as.numeric(csv[csv$Country.Region=="Brazil" & csv$Province.State=="",-(1:4)])
confirmed$Denmark = as.numeric(csv[csv$Country.Region=="Denmark" & csv$Province.State=="",-(1:4)])
confirmed$France  = as.numeric(csv[csv$Country.Region=="France" & csv$Province.State=="",-(1:4)])
confirmed$Germany = as.numeric(csv[csv$Country.Region=="Germany" & csv$Province.State=="",-(1:4)])
confirmed$Iran    = as.numeric(csv[csv$Country.Region=="Iran" & csv$Province.State=="", -(1:4)])
confirmed$Italy   = as.numeric(csv[csv$Country.Region=="Italy" & csv$Province.State=="", -(1:4)])
confirmed$Spain   = as.numeric(csv[csv$Country.Region=="Spain" & csv$Province.State=="", -(1:4)])
confirmed$Sweden  = as.numeric(csv[csv$Country.Region=="Sweden" & csv$Province.State=="", -(1:4)])
confirmed$SKorea  = as.numeric(csv[csv$Country.Region=="Korea, South" & csv$Province.State=="",-(1:4)])
confirmed$UK      = as.numeric(csv[csv$Country.Region=="United Kingdom" & csv$Province.State=="",-(1:4)])
confirmed$US      = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="",-(1:4)])
confirmed$Russia  = as.numeric(csv[csv$Country.Region=="Russia" & csv$Province.State=="",-(1:4)])

## interesting provinces
confirmed$Hubei = as.numeric(csv[csv$Country.Region=="China" & csv$Province.State=="Hubei", -(1:4)]) 

## ## STATES ARE NO LONGER IN TIME SERIES FILES
## ## all the states, loaded in a very stupid way but Emacs exists
## confirmed$WA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Washington", -(1:4)])
## confirmed$NY = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New York", -(1:4)])
## confirmed$CA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="California", -(1:4)])
## confirmed$MA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Massachusetts", -(1:4)])
## confirmed$GA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Georgia", -(1:4)])
## confirmed$CO = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Colorado", -(1:4)])
## confirmed$FL = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Florida", -(1:4)])
## confirmed$NJ = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New Jersey", -(1:4)])
## confirmed$OR = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Oregon", -(1:4)])
## confirmed$TX = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Texas", -(1:4)])
## confirmed$IL = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Illinois", -(1:4)])
## confirmed$PA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Pennsylvania", -(1:4)])
## confirmed$IA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Iowa", -(1:4)])
## confirmed$MA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Maryland", -(1:4)])
## confirmed$NC = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="North Carolina", -(1:4)])
## confirmed$SC = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="South Carolina", -(1:4)])
## confirmed$TN = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Tennessee", -(1:4)])
## confirmed$VA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Virginia", -(1:4)])
## confirmed$AZ = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Arizona", -(1:4)])
## confirmed$IN = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Indiana", -(1:4)])
## confirmed$KY = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Kentucky", -(1:4)])
## confirmed$DC = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="District of Columbia", -(1:4)])
## confirmed$NV = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Nevada", -(1:4)])
## confirmed$NH = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New Hampshire", -(1:4)])
## confirmed$MN = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Minnesota", -(1:4)])
## confirmed$NE = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Nebraska", -(1:4)])
## confirmed$OH = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Ohio", -(1:4)])
## confirmed$RI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Rhode Island", -(1:4)])
## confirmed$WI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Wisconsin", -(1:4)])
## confirmed$CT = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Connecticut", -(1:4)])
## confirmed$HI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Hawaii", -(1:4)])
## confirmed$OK = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Oklahoma", -(1:4)])
## confirmed$UT = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Utah", -(1:4)])
## confirmed$KA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Kansas", -(1:4)])
## confirmed$LA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Louisiana", -(1:4)])
## confirmed$MO = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Missouri", -(1:4)])
## confirmed$VT = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Vermont", -(1:4)])
## confirmed$AK = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Alaska", -(1:4)])
## confirmed$AR = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Arkansas", -(1:4)])
## confirmed$DE = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Delaware", -(1:4)])
## confirmed$ID = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Idaho", -(1:4)])
## confirmed$ME = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Maine", -(1:4)])
## confirmed$MI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Michigan", -(1:4)])
## confirmed$MS = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Mississippi", -(1:4)])
## confirmed$MO = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Montana", -(1:4)])
## confirmed$NM = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New Mexico", -(1:4)])
## confirmed$ND = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="North Dakota", -(1:4)])
## confirmed$SD = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="South Dakota", -(1:4)])
## confirmed$WV = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="West Virginia", -(1:4)])
## confirmed$WY = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Wyoming", -(1:4)])
