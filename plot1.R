source("eda_p1.R")

png(filename = "plot1.png")

#Drawing plot 1
with(dataSelect, hist(Global_active_power,col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))

dev.off()