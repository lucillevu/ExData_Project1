source("eda_p1.R")

png(filename = "plot2.png")

#Draw plot 2
with(dataSelect, plot(Global_active_power~Time, type="l", ylab="Global Active Power (kilowatts)",xlab=""))

dev.off()