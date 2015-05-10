source("loaddata.R")
# load data
d <- loaddata()

# open png device
png("plot1.png",width=480,height=480)

# set font size
par(cex = 1)

# plot histogram
hist(d$Global_active_power,main="Global Active Power",xlab = "Global Active Power (kilowatts)", col = "orangered3")

# close png device
dev.off()