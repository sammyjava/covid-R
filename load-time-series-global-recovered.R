## load the CSSE time series CSVs

## Recovered (assume that the COVID-19 GitHub repo is next door)
csv.recovered = read.csv(file="../COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_recovered_global.csv", header=TRUE)

## row names are dates
recovered = data.frame(row.names=sub("X", "", colnames(csv.recovered)[-(1:4)]))

## countries with totals listed
recovered$Brazil    = as.numeric(csv.recovered[csv.recovered$Country.Region=="Brazil"         & csv.recovered$Province.State=="",-(1:4)])
recovered$Denmark   = as.numeric(csv.recovered[csv.recovered$Country.Region=="Denmark"        & csv.recovered$Province.State=="",-(1:4)])
recovered$France    = as.numeric(csv.recovered[csv.recovered$Country.Region=="France"         & csv.recovered$Province.State=="",-(1:4)])
recovered$Germany   = as.numeric(csv.recovered[csv.recovered$Country.Region=="Germany"        & csv.recovered$Province.State=="",-(1:4)])
recovered$Iran      = as.numeric(csv.recovered[csv.recovered$Country.Region=="Iran"           & csv.recovered$Province.State=="", -(1:4)])
recovered$Italy     = as.numeric(csv.recovered[csv.recovered$Country.Region=="Italy"          & csv.recovered$Province.State=="", -(1:4)])
recovered$Spain     = as.numeric(csv.recovered[csv.recovered$Country.Region=="Spain"          & csv.recovered$Province.State=="", -(1:4)])
recovered$Sweden    = as.numeric(csv.recovered[csv.recovered$Country.Region=="Sweden"         & csv.recovered$Province.State=="", -(1:4)])
recovered$SKorea    = as.numeric(csv.recovered[csv.recovered$Country.Region=="Korea, South"   & csv.recovered$Province.State=="",-(1:4)])
recovered$UK        = as.numeric(csv.recovered[csv.recovered$Country.Region=="United Kingdom" & csv.recovered$Province.State=="",-(1:4)])
recovered$US        = as.numeric(csv.recovered[csv.recovered$Country.Region=="US"             & csv.recovered$Province.State=="",-(1:4)])
recovered$Russia    = as.numeric(csv.recovered[csv.recovered$Country.Region=="Russia"         & csv.recovered$Province.State=="",-(1:4)])
recovered$Poland    = as.numeric(csv.recovered[csv.recovered$Country.Region=="Poland"         & csv.recovered$Province.State=="",-(1:4)])
recovered$Israel    = as.numeric(csv.recovered[csv.recovered$Country.Region=="Israel"         & csv.recovered$Province.State=="",-(1:4)])

## countries that require summing over provinces
recovered$Australia = as.numeric(colSums(csv.recovered[csv.recovered$Country.Region=="Australia",-(1:4)]))
recovered$Canada    = as.numeric(colSums(csv.recovered[csv.recovered$Country.Region=="Canada",-(1:4)]))
recovered$China     = as.numeric(colSums(csv.recovered[csv.recovered$Country.Region=="China",-(1:4)]))



