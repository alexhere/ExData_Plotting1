source("loaddata.R")

# load data
d <- loaddata()

# open png device
png("plot3.png",width=480,height=480)

# set font size
par(cex = 1)

# empty plot
plot(d$DateTime,d$Sub_metering_1,type = "n",xlab = "",ylab = "Energy sub metering")

# plot line for Sub_metering_1
lines(d$DateTime,d$Sub_metering_1,col="black")

# plot line for Sub_metering_2
lines(d$DateTime,d$Sub_metering_2,col="red")

# plot line for Sub_metering_3
lines(d$DateTime,d$Sub_metering_3,col="blue")

# include legend
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1))

# close png device
dev.off()