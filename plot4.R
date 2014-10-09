source("LoadFile.R")

data <- LoadFile() #calling function in LoadFile.R to load file

png(filename="plot4.png", width=480, height=480, units="px")

par (mfrow = c(2,2)) #preparing a 2X2 area for the charts

#chart 1
plot(data$DateTime, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")

#chart 2
plot(data$DateTime, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

#chart 3
plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, col=c("black","blue","red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")

#chart 4
plot(data$DateTime, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

dev.off()