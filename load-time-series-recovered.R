## load the CSSE time series CSVs
##
## time_series_19-covid-Deaths.csv
## time_series_19-covid-Recovered.csv
## time_series_19-covid-Confirmed.csv
##
##     1              2                  3        4    5        6        7        ...
##     Province.State Country.Region     Lat      Long X1.22.20 X1.23.20 X1.24.20 ...
## 1                        Thailand 15.0000  101.0000        2        3        5
## 2                           Japan 36.0000  138.0000        2        1        2
## 3                       Singapore  1.2833  103.8333        0        1        3
## 4                           Nepal 28.1667   84.2500        0        0        0
## 5                        Malaysia  2.5000  112.5000        0        0        0
## 6 British Columbia         Canada 49.2827 -123.1207        0        0        0

## Recovered (assume that the COVID-19 GitHub repo is next door)
csv = read.csv(file="../COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Recovered.csv", header=TRUE)

## row names are dates
recovered = data.frame(row.names=sub("X", "", colnames(csv)[-(1:4)]))

## interesting countries
recovered$Brazil = as.numeric(csv[csv$Country.Region=="Brazil",-(1:4)])
recovered$Denmark = as.numeric(csv[csv$Country.Region=="Denmark" & csv$Province.State=="Denmark", -(1:4)])
recovered$France = as.numeric(csv[csv$Country.Region=="France" & csv$Province.State=="France", -(1:4)])
recovered$Germany = as.numeric(csv[csv$Country.Region=="Germany",-(1:4)])
recovered$Iran  = as.numeric(csv[csv$Country.Region=="Iran", -(1:4)])
recovered$Italy = as.numeric(csv[csv$Country.Region=="Italy", -(1:4)])
recovered$Spain = as.numeric(csv[csv$Country.Region=="Spain", -(1:4)])
recovered$Sweden = as.numeric(csv[csv$Country.Region=="Sweden", -(1:4)])
recovered$SKorea = as.numeric(csv[csv$Country.Region=="Korea, South",-(1:4)])
recovered$UK    = as.numeric(csv[csv$Country.Region=="United Kingdom" & csv$Province.State=="United Kingdom", -(1:4)])

## interesting provinces
recovered$Hubei = as.numeric(csv[csv$Country.Region=="China" & csv$Province.State=="Hubei", -(1:4)]) 

## all the states, loaded in a very stupid way but Emacs exists
recovered$WA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Washington", -(1:4)])
recovered$NY = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New York", -(1:4)])
recovered$CA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="California", -(1:4)])
recovered$MA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Massachusetts", -(1:4)])
recovered$GA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Georgia", -(1:4)])
recovered$CO = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Colorado", -(1:4)])
recovered$FL = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Florida", -(1:4)])
recovered$NJ = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New Jersey", -(1:4)])
recovered$OR = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Oregon", -(1:4)])
recovered$TX = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Texas", -(1:4)])
recovered$IL = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Illinois", -(1:4)])
recovered$PA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Pennsylvania", -(1:4)])
recovered$IA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Iowa", -(1:4)])
recovered$MA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Maryland", -(1:4)])
recovered$NC = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="North Carolina", -(1:4)])
recovered$SC = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="South Carolina", -(1:4)])
recovered$TN = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Tennessee", -(1:4)])
recovered$VA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Virginia", -(1:4)])
recovered$AZ = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Arizona", -(1:4)])
recovered$IN = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Indiana", -(1:4)])
recovered$KY = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Kentucky", -(1:4)])
recovered$DC = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="District of Columbia", -(1:4)])
recovered$NV = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Nevada", -(1:4)])
recovered$NH = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New Hampshire", -(1:4)])
recovered$MN = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Minnesota", -(1:4)])
recovered$NE = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Nebraska", -(1:4)])
recovered$OH = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Ohio", -(1:4)])
recovered$RI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Rhode Island", -(1:4)])
recovered$WI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Wisconsin", -(1:4)])
recovered$CT = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Connecticut", -(1:4)])
recovered$HI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Hawaii", -(1:4)])
recovered$OK = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Oklahoma", -(1:4)])
recovered$UT = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Utah", -(1:4)])
recovered$KA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Kansas", -(1:4)])
recovered$LA = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Louisiana", -(1:4)])
recovered$MO = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Missouri", -(1:4)])
recovered$VT = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Vermont", -(1:4)])
recovered$AK = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Alaska", -(1:4)])
recovered$AR = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Arkansas", -(1:4)])
recovered$DE = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Delaware", -(1:4)])
recovered$ID = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Idaho", -(1:4)])
recovered$ME = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Maine", -(1:4)])
recovered$MI = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Michigan", -(1:4)])
recovered$MS = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Mississippi", -(1:4)])
recovered$MO = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Montana", -(1:4)])
recovered$NM = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="New Mexico", -(1:4)])
recovered$ND = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="North Dakota", -(1:4)])
recovered$SD = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="South Dakota", -(1:4)])
recovered$WV = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="West Virginia", -(1:4)])
recovered$WY = as.numeric(csv[csv$Country.Region=="US" & csv$Province.State=="Wyoming", -(1:4)])


