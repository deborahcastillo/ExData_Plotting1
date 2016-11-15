setwd("~/Documents/DataScienceSpecialization/Exploratory Data Analysis/Week1")

##Reading, converting to right formats and subsetting
househ <- as.data.frame(read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?"))

library(lubridate)
househ$Time <- hms(househ$Time)
househ$Date <- dmy(househ$Date)

subh <- subset(househ, Date == "2007-02-01" | Date == "2007-02-02")

##Plot 1
hist(subh$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.copy(png, "plot1.png", height = 480, width = 480)
dev.off()
