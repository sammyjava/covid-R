## load the CSSE time series CSVs
##
## global files:
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv
##
##     Country.Region X5.4.20
## 24         Belgium    7924
## 29          Brazil    7367
## 43          Canada    1446
## 45          Canada    2281
## 63           China    4512
## 98         Ecuador    1569
## 117         France   25168
## 121        Germany    6993
## 132          India    1566
## 134           Iran    6277
## 136        Ireland    1319
## 138          Italy   29079
## 159         Mexico    2271
## 170    Netherlands    5082
## 182           Peru    1344
## 185       Portugal    1063
## 188         Russia    1356
## 202          Spain   25428
## 206         Sweden    2769
## 207    Switzerland    1784
## 214         Turkey    3461
## 224 United Kingdom   28734
## 226             US   68922


## Deaths (assume that the COVID-19 GitHub repo is next door)
csv.deaths = read.csv(file="../COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv", header=TRUE)

## row names are dates
deaths = data.frame(row.names=sub("X", "", colnames(csv.deaths)[-(1:4)]))

## countries over 1000 deaths
deaths$Belgium   = as.numeric(csv.deaths[csv.deaths$Country.Region=="Belgium"        & csv.deaths$Province.State=="", -(1:4)])
deaths$Brazil    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Brazil"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Canada    = as.numeric(colSums(csv.deaths[csv.deaths$Country.Region=="Canada",-(1:4)]))
deaths$China     = as.numeric(colSums(csv.deaths[csv.deaths$Country.Region=="China",-(1:4)]))
deaths$Ecuador   = as.numeric(csv.deaths[csv.deaths$Country.Region=="Ecuador"        & csv.deaths$Province.State=="",-(1:4)])
deaths$France    = as.numeric(csv.deaths[csv.deaths$Country.Region=="France"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Germany   = as.numeric(csv.deaths[csv.deaths$Country.Region=="Germany"        & csv.deaths$Province.State=="",-(1:4)])
deaths$India     = as.numeric(csv.deaths[csv.deaths$Country.Region=="India"          & csv.deaths$Province.State=="", -(1:4)])
deaths$Iran      = as.numeric(csv.deaths[csv.deaths$Country.Region=="Iran"           & csv.deaths$Province.State=="", -(1:4)])
deaths$Ireland   = as.numeric(csv.deaths[csv.deaths$Country.Region=="Ireland"        & csv.deaths$Province.State=="",-(1:4)])
deaths$Italy     = as.numeric(csv.deaths[csv.deaths$Country.Region=="Italy"          & csv.deaths$Province.State=="", -(1:4)])
deaths$Mexico    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Mexico"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Netherlands = as.numeric(csv.deaths[csv.deaths$Country.Region=="Netherlands"  & csv.deaths$Province.State=="",-(1:4)])
deaths$Peru      = as.numeric(csv.deaths[csv.deaths$Country.Region=="Peru"           & csv.deaths$Province.State=="", -(1:4)])
deaths$Portugal  = as.numeric(csv.deaths[csv.deaths$Country.Region=="Portugal"       & csv.deaths$Province.State=="",-(1:4)])
deaths$Russia    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Russia"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Spain     = as.numeric(csv.deaths[csv.deaths$Country.Region=="Spain"          & csv.deaths$Province.State=="", -(1:4)])
deaths$Sweden    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Sweden"         & csv.deaths$Province.State=="", -(1:4)])
deaths$Switzerland = as.numeric(csv.deaths[csv.deaths$Country.Region=="Switzerland"  & csv.deaths$Province.State=="", -(1:4)])
deaths$Turkey    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Turkey"         & csv.deaths$Province.State=="",-(1:4)])
deaths$UK        = as.numeric(csv.deaths[csv.deaths$Country.Region=="United Kingdom" & csv.deaths$Province.State=="",-(1:4)])
deaths$US        = as.numeric(csv.deaths[csv.deaths$Country.Region=="US"             & csv.deaths$Province.State=="",-(1:4)])

## other countries
deaths$Australia = as.numeric(colSums(csv.deaths[csv.deaths$Country.Region=="Australia",-(1:4)]))
