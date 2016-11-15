##Graph top left
plot(subh$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

##Graph top right
plot(subh$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

##Graph bottom left
with(subh, {plot(Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(Sub_metering_2, col = "red")
  lines(Sub_metering_3, col = "blue")})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=4, legend=c("Sub_metering_1", "Sub_metering_2", 
                                                                         "Sub_metering_3"))
##Graph bottom right

plot(subh$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "Datetime")

dev.copy(png, "plot4.png", height = 480, width = 480)
dev.off()
