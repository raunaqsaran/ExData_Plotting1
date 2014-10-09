LoadFile <- function()
{
  filename <- "./household_power_consumption.txt" #assuming the data file exists in the working directory
  filedata_full <- read.csv(filename, header=T, sep=";", na.strings="?", colClasses=c("character", "character", rep("numeric",7)))
  filedata <- filedata_full[(filedata_full$Date == "1/2/2007" | filedata_full$Date == "2/2/2007"), ]
  date_time <- paste(filedata$Date, filedata$Time)
  filedata$DateTime <- strptime(date_time, "%d/%m/%Y %H:%M:%S") #adding new column with consolidated date and time
  filedata                      
}