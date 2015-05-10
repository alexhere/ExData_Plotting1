loaddata <- function(){
  # load data.table library
  library(data.table)
  
  # load data from file into data.table
  d <- fread("household_power_consumption.txt", colClasses = rep("character",9) ,na.strings="?")
  
  # Subset data - only data from dates2007-02-01 and 2007-02-02
  d <- d[d$Date == "1/2/2007" | d$Date == "2/2/2007",]
  
  # convert column 3 to 9 to numeric
  for(i in 3:9){d[[i]] <- as.numeric(d[[i]])}
  
  # convert data (data.table) to data.frame
  d <- as.data.frame(d)
  
  # convert date and time to datetime
  d$DateTime <- strptime(paste(d$Date,d$Time),"%d/%m/%Y %H:%M:%S")
  d
}