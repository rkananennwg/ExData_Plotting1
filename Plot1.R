

#set working directory to file location
setwd("H:/datasciencecoursera/Exploratory Data/exdata-data-household_power_consumption")
#read in file
householdFile <- "household_power_consumption.txt"
plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")
## set time variable
FebData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FebData$Date, finalData$Time),"%d/%m/%Y %H:%M:%S")

png(filename='plots/plot1.png',width=480,height=480,units='px')

## Generating Plot 1
hist(FebData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")






      