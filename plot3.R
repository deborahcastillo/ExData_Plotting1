library(lubridate)
datetime <- paste(subh$Date, subh$Time)

subh$Datetime <- paste(subh$Date, hms(subh$Time))
subh$Datetime <- as.POSIXct(subh$Datetime)

with(subh, {plot(Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(Sub_metering_2, col = "red")
  lines(Sub_metering_3, col = "blue")})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=4, legend=c("Sub_metering_1", "Sub_metering_2", 
                                                                         "Sub_metering_3"))
dev.copy(png, "plot3.png", height = 480, width = 480)
dev.off()
