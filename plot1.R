source("LoadFile.R")

data <- LoadFile() #calling function in LoadFile.R to load file

png(filename="plot1.png", width=480, height=480, units="px")

hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")

dev.off()
