source("eda_p1.R")

png(filename = "plot4.png")

par(mfrow =c(2,2), mar=c(4, 4, 2, 1))

with(dataSelect,{
  #plot graph 1
  with(dataSelect, plot(Global_active_power~Time, type="l", ylab="Global Active Power (kilowatts)",xlab=""))
  
  #plot graph 2
  plot(Voltage ~ Time, type="l", xlab="datetime", ylab="Voltage" )
  #plot graph 3
  plot(Sub_metering_1 ~ Time, type="l", xlab="", ylab="Energy sub metering")
  lines(Sub_metering_2 ~ Time, col="red")
  lines(Sub_metering_3 ~ Time, col="blue")
  legend("topright", pch = 1, bty="n", col = c("black","blue", "red"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  #plot graph 4
  plot(Global_reactive_power ~ Time, type="l", xlab="datetime", ylab="Global_reactive_power" )
  
  
})

dev.off()