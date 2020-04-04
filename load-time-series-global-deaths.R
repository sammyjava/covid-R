## load the CSSE time series CSVs
##
## global files:
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_global.csv
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv

## Deaths (assume that the COVID-19 GitHub repo is next door)
csv.deaths = read.csv(file="../COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_global.csv", header=TRUE)

## row names are dates
deaths = data.frame(row.names=sub("X", "", colnames(csv.deaths)[-(1:4)]))

## countries with totals listed
deaths$Brazil    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Brazil"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Denmark   = as.numeric(csv.deaths[csv.deaths$Country.Region=="Denmark"        & csv.deaths$Province.State=="",-(1:4)])
deaths$France    = as.numeric(csv.deaths[csv.deaths$Country.Region=="France"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Germany   = as.numeric(csv.deaths[csv.deaths$Country.Region=="Germany"        & csv.deaths$Province.State=="",-(1:4)])
deaths$Iran      = as.numeric(csv.deaths[csv.deaths$Country.Region=="Iran"           & csv.deaths$Province.State=="", -(1:4)])
deaths$Italy     = as.numeric(csv.deaths[csv.deaths$Country.Region=="Italy"          & csv.deaths$Province.State=="", -(1:4)])
deaths$Spain     = as.numeric(csv.deaths[csv.deaths$Country.Region=="Spain"          & csv.deaths$Province.State=="", -(1:4)])
deaths$Sweden    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Sweden"         & csv.deaths$Province.State=="", -(1:4)])
deaths$SKorea    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Korea, South"   & csv.deaths$Province.State=="",-(1:4)])
deaths$UK        = as.numeric(csv.deaths[csv.deaths$Country.Region=="United Kingdom" & csv.deaths$Province.State=="",-(1:4)])
deaths$US        = as.numeric(csv.deaths[csv.deaths$Country.Region=="US"             & csv.deaths$Province.State=="",-(1:4)])
deaths$Russia    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Russia"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Poland    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Poland"         & csv.deaths$Province.State=="",-(1:4)])
deaths$Israel    = as.numeric(csv.deaths[csv.deaths$Country.Region=="Israel"         & csv.deaths$Province.State=="",-(1:4)])

## countries that require summing over provinces
deaths$Australia = as.numeric(colSums(csv.deaths[csv.deaths$Country.Region=="Australia",-(1:4)]))
deaths$Canada    = as.numeric(colSums(csv.deaths[csv.deaths$Country.Region=="Canada",-(1:4)]))
deaths$China     = as.numeric(colSums(csv.deaths[csv.deaths$Country.Region=="China",-(1:4)]))
