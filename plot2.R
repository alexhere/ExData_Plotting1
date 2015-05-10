source("loaddata.R")

# load data
d <- loaddata()

# open png device
png("plot2.png",width=480,height=480)

# set font size
par(cex = 1)

# plot line graph
plot(d$DateTime,d$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")

# close png device
dev.off()