source("LoadFile.R")

data <- LoadFile() #calling function in LoadFile.R to load file

png(filename="plot2.png", width=480, height=480, units="px")

plot(data$DateTime, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()