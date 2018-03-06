setwd("~/Documents/ECL/Semestre 9/Visualization")

library(rjson)
data<-read.csv("GlobalLandTemperaturesByCountry.csv")
data$AverageTemperatureUncertainty<-NULL


USA<-subset(data, Country=="United States")
N_min<-which(USA$dt=="1866-12-01")
USA<-tail(USA,-N_min)
USA<-head(USA,-9)
USA$Country<-NULL
write.csv((USA),file="USA")

Canada<-subset(data, Country=="Canada")
N_min<-which(Canada$dt=="1866-12-01")
Canada<-tail(Canada,-N_min)
Canada<-head(Canada,-9)
Canada$Country<-NULL
write.csv(Canada,file="Canada")

Brazil<-subset(data, Country=="Brazil")
N_min<-which(Brazil$dt=="1866-12-01")
Brazil<-tail(Brazil,-N_min)
Brazil<-head(Brazil,-9)
Brazil$Country<-NULL
write.csv((Brazil),file="Brazil")

Argentina<-subset(data, Country=="Argentina")
N_min<-which(Argentina$dt=="1866-12-01")
Argentina<-tail(Argentina,-N_min)
Argentina<-head(Argentina,-9)
Argentina$Country<-NULL
write.csv((Argentina),file="Argentina")

South_Africa<-subset(data, Country=="South Africa")
N_min<-which(South_Africa$dt=="1866-12-01")
South_Africa<-tail(South_Africa,-(N_min))
South_Africa<-head(South_Africa,-9)
South_Africa$dt<-as.Date(South_Africa$dt)
South_Africa<-South_Africa[format(South_Africa$dt,'%Y') !="1873",]
South_Africa<-South_Africa[format(South_Africa$dt,'%Y') !="1880",]
South_Africa$Country<-NULL
write.csv((South_Africa),file="South Africa")

Algeria<-subset(data, Country=="Algeria")
N_min<-which(Algeria$dt=="1866-12-01")
Algeria<-tail(Algeria,-N_min)
Algeria<-head(Algeria,-9)
Algeria$Country<-NULL
write.csv((Algeria),file="Algeria")

Madagascar<-subset(data, Country=="Madagascar")
N_min<-which(Madagascar$dt=="1866-12-01")
Madagascar<-tail(Madagascar,-N_min)
Madagascar<-tail(Madagascar,-min(which(!is.na(Madagascar$AverageTemperature))))
Madagascar<-head(Madagascar,-9)
Madagascar$dt<-as.Date(Madagascar$dt)
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1879",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1880",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1881",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1882",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1883",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1884",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1885",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1886",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1887",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1888",]
Madagascar<-Madagascar[format(Madagascar$dt,'%Y') !="1890",]
Madagascar<-tail(Madagascar,-7)
Madagascar$Country<-NULL
write.csv((Madagascar),file="Madagascar")

Australia<-subset(data, Country=="Australia")
N_min<-which(Australia$dt=="1866-12-01")
Australia<-tail(Australia,-N_min)
Australia<-head(Australia,-9)
Australia$Country<-NULL
write.csv((Australia),file="Australia")

China<-subset(data, Country=="China")
N_min<-which(China$dt=="1866-12-01")
China<-tail(China,-N_min)
China<-head(China,-9)
China$Country<-NULL
write.csv((China),file="China")

Russia<-subset(data, Country=="Russia")
N_min<-which(Russia$dt=="1866-12-01")
Russia<-tail(Russia,-N_min)
Russia<-head(Russia,-9)
Russia$Country<-NULL
write.csv((Russia),file="Russia")

India<-subset(data, Country=="India")
N_min<-which(India$dt=="1866-12-01")
India<-tail(India,-N_min)
India<-head(India,-9)
India$Country<-NULL
write.csv((India),file="India")

France<-subset(data, Country=="France")
N_min<-which(France$dt=="1866-12-01")
France<-tail(France,-N_min)
France<-head(France,-9)
France$Country<-NULL
write.csv((France),file="France")

Spain<-subset(data, Country=="Spain")
N_min<-which(Spain$dt=="1866-12-01")
Spain<-tail(Spain,-N_min)
Spain<-head(Spain,-9)
Spain$Country<-NULL
write.csv((Spain),file="Spain")

Sweden<-subset(data, Country=="Sweden")
N_min<-which(Sweden$dt=="1866-12-01")
Sweden<-tail(Sweden,-N_min)
Sweden<-head(Sweden,-9)
Sweden$Country<-NULL
write.csv((Sweden),file="Sweden")

IsDate <- function(mydate, date.format = "%d/%m/%y") {
  # Check if field is a date using as.Date that looks for unambiguous dates
  #   Assumes date format so NA returned not Character error. 
  #   Why? with no date format, R tries two defaults then gives error. 
  #   BUT With a dateformat R returns NA
  # Args
  #   Suspected date and optional date format string
  # Returns
  #   TRUE if thinbks it is a date
  tryCatch(!is.na(as.Date(mydate, date.format)),  
           error = function(err) {FALSE})  
}