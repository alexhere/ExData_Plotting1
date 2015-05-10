loaddata <- function(){
  library(data.table)
  d <- fread("household_power_consumption.txt", colClasses = rep("character",9) ,na.strings="?")
  d <- d[d$Date == "1/2/2007" | d$Date == "2/2/2007",]
  for(i in 3:9){d[[i]] <- as.numeric(d[[i]])}
  d <- as.data.frame(d)
  d$DateTime <- strptime(paste(d$Date,d$Time),"%d/%m/%Y %H:%M:%S")
  d
}