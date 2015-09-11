source("eda_p1.R")

png(filename = "plot3.png")

#plot graph 3
with(dataSelect, plot(Sub_metering_1 ~ Time, type="l", xlab="", ylab="Energy sub metering"))
with(dataSelect, lines(Sub_metering_2 ~ Time, col="red"))
with(dataSelect, lines(Sub_metering_3 ~ Time, col="blue"))
legend("topright", lty = 1, col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()