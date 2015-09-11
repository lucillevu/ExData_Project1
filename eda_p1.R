library("data.table")
library(dplyr)
#Download and unzip the file
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fileName <- "exdata-data-household_power_consumption.zip"

if(!file.exists(fileName)){
  download.file(fileUrl,fileName, mode = "wb")
}
unzip(fileName)

#read file
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors= F, na.strings = "?")
data <- na.omit(data)
#convert date-time format and select data
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
sDate <- as.Date("2007-02-01", format ="%Y-%m-%d")
eDate <- as.Date("2007-02-02", format ="%Y-%m-%d")

dataSelect <- data[data$Date %in% c(sDate,eDate),]

dataSelect$Time <- paste(dataSelect$Date,dataSelect$Time)
dataSelect$Time <- as.POSIXct(dataSelect$Time, format="%Y-%m-%d %H:%M:%S")

#convert data to numeric
dataSelect$Global_active_power <- as.numeric(dataSelect$Global_active_power)
dataSelect$Global_reactive_power <- as.numeric(dataSelect$Global_reactive_power)
dataSelect$Voltage <- as.numeric(dataSelect$Voltage)
dataSelect$Sub_metering_1 <- as.numeric(dataSelect$Sub_metering_1)
dataSelect$Sub_metering_2 <- as.numeric(dataSelect$Sub_metering_2)
dataSelect$Sub_metering_3 <- as.numeric(dataSelect$Sub_metering_3)

return (dataSelect)


