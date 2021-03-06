## load the CSSE time series CSVs
##
## US files:
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_confirmed_US.csv
## csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv

## Deaths (assume that the COVID-19 GitHub repo is next door)
csv.usdeaths = read.csv(file="../COVID-19/csse_covid_19_data/csse_covid_19_time_series/time_series_covid19_deaths_US.csv", header=TRUE)

## row names are dates
usdeaths = data.frame(row.names=sub("X", "", colnames(csv.usdeaths)[-(1:11)]))

## state totals have Admin2="Unassigned"
usdeaths$AL = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Alabama",-(1:11)])
usdeaths$AK = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Alaska",-(1:11)])
usdeaths$AZ = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Arizona",-(1:11)])
usdeaths$AR = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Arkansas",-(1:11)])
usdeaths$CA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="California",-(1:11)])
usdeaths$CO = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Colorado",-(1:11)])
usdeaths$CT = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Connecticut",-(1:11)])
usdeaths$DE = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Delaware",-(1:11)])
usdeaths$DC = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="District of Columbia",-(1:11)])
usdeaths$FL = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Florida",-(1:11)])
usdeaths$GA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Georgia",-(1:11)])
usdeaths$HA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Hawaii",-(1:11)])
usdeaths$ID = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Idaho",-(1:11)])
usdeaths$IL = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Illinois",-(1:11)])
usdeaths$IN = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Indiana",-(1:11)])
usdeaths$IA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Iowa",-(1:11)])
usdeaths$KA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Kansas",-(1:11)])
usdeaths$KY = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Kentucky",-(1:11)])
usdeaths$LA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Louisiana",-(1:11)])
usdeaths$ME = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Maine",-(1:11)])
usdeaths$MD = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Maryland",-(1:11)])
usdeaths$MA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Massachusetts",-(1:11)])
usdeaths$MI = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Michigan",-(1:11)])
usdeaths$MN = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Minnesota",-(1:11)])
usdeaths$MI = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Mississippi",-(1:11)])
usdeaths$MO = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Missouri",-(1:11)])
usdeaths$MT = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Montana",-(1:11)])
usdeaths$NE = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Nebraska",-(1:11)])
usdeaths$NV = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Nevada",-(1:11)])
usdeaths$NH = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="New Hampshire",-(1:11)])
usdeaths$NJ = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="New Jersey",-(1:11)])
usdeaths$NM = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="New Mexico",-(1:11)])
usdeaths$NY = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="New York",-(1:11)])
usdeaths$NC = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="North Carolina",-(1:11)])
usdeaths$ND = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="North Dakota",-(1:11)])
usdeaths$OH = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Ohio",-(1:11)])
usdeaths$OK = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Oklahoma",-(1:11)])
usdeaths$OR = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Oregon",-(1:11)])
usdeaths$PA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Pennsylvania" ,-(1:11)])
usdeaths$RI = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Rhode Island",-(1:11)])
usdeaths$SC = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="South Carolina",-(1:11)])
usdeaths$SD = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="South Dakota" ,-(1:11)])
usdeaths$TN = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Tennessee",-(1:11)])
usdeaths$TX = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Texas",-(1:11)])
usdeaths$UT = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Utah",-(1:11)])
usdeaths$VT = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Vermont",-(1:11)])
usdeaths$VA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Virginia",-(1:11)])
usdeaths$WA = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Washington",-(1:11)])
usdeaths$WV = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="West Virginia",-(1:11)])
usdeaths$WI = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Wisconsin",-(1:11)])
usdeaths$WY = as.numeric(csv.usdeaths[csv.usdeaths$Admin2=="Unassigned" & csv.usdeaths$Province_State=="Wyoming",-(1:11)])


