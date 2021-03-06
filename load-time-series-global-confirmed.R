## load the CSSE time series CSVs
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
csv.confirmed = read.csv(file="../COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv", header=TRUE)

## row names are dates
confirmed = data.frame(row.names=sub("X", "", colnames(csv.confirmed)[-(1:4)]))

## countries over 1000 confirmed
confirmed$Belgium   = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Belgium"        & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Brazil    = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Brazil"         & csv.confirmed$Province.State=="",-(1:4)])
confirmed$Canada    = as.numeric(colSums(csv.confirmed[csv.confirmed$Country.Region=="Canada",-(1:4)]))
confirmed$China     = as.numeric(colSums(csv.confirmed[csv.confirmed$Country.Region=="China",-(1:4)]))
confirmed$Ecuador   = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Ecuador"        & csv.confirmed$Province.State=="",-(1:4)])
confirmed$France    = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="France"         & csv.confirmed$Province.State=="",-(1:4)])
confirmed$Germany   = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Germany"        & csv.confirmed$Province.State=="",-(1:4)])
confirmed$India     = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="India"          & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Iran      = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Iran"           & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Ireland   = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Ireland"        & csv.confirmed$Province.State=="",-(1:4)])
confirmed$Italy     = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Italy"          & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Mexico    = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Mexico"         & csv.confirmed$Province.State=="",-(1:4)])
confirmed$Netherlands = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Netherlands"  & csv.confirmed$Province.State=="",-(1:4)])
confirmed$Peru      = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Peru"           & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Portugal  = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Portugal"       & csv.confirmed$Province.State=="",-(1:4)])
confirmed$Russia    = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Russia"         & csv.confirmed$Province.State=="",-(1:4)])
confirmed$Spain     = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Spain"          & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Sweden    = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Sweden"         & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Switzerland = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Switzerland"  & csv.confirmed$Province.State=="", -(1:4)])
confirmed$Turkey    = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="Turkey"         & csv.confirmed$Province.State=="",-(1:4)])
confirmed$UK        = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="United Kingdom" & csv.confirmed$Province.State=="",-(1:4)])
confirmed$US        = as.numeric(csv.confirmed[csv.confirmed$Country.Region=="US"             & csv.confirmed$Province.State=="",-(1:4)])

## other countries
confirmed$Australia = as.numeric(colSums(csv.confirmed[csv.confirmed$Country.Region=="Australia",-(1:4)]))

