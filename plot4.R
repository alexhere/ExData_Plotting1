source("loaddata.R")

# load data
d <- loaddata()

# open png device
png("plot4.png",width=480,height=480)

# set font size and number of subplots
par(cex = 0.2,mfcol = c(2,2))

# 1st plot
# plot line graph
plot(d$DateTime,d$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power")


# 2nd plot
# empty plot
plot(d$DateTime,d$Sub_metering_1,type = "n",xlab = "",ylab = "Energy sub metering")

# plot line for Sub_metering_1
lines(d$DateTime,d$Sub_metering_1,col="black")

# plot line for Sub_metering_2
lines(d$DateTime,d$Sub_metering_2,col="red")

# plot line for Sub_metering_3
lines(d$DateTime,d$Sub_metering_3,col="blue")

# include legend
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),bty="n")

# 3rd plot
# plot line graph
plot(d$DateTime,d$Voltage,type = "l",xlab = "datetime",ylab = "Voltage")

# 4th plot
# plot line graph
plot(d$DateTime,d$Global_reactive_power,type = "l",xlab = "datetime",ylab = "Global_reactive_power")

# close png device
dev.off()