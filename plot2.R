
plot(subh$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.copy(png, "plot2.png", height = 480, width = 480)
dev.off()
