

#set working directory to file location
setwd("H:/datasciencecoursera/Exploratory Data/exdata-data-household_power_consumption")
#read in file
householdFile <- "household_power_consumption.txt"
plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")
## set time variable
FebData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FebData$Date, FebData$Time),"%d/%m/%Y %H:%M:%S")

## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
FebData$Datetime <- as.POSIXct(datetime)

## Plot 3
with(FebData, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))