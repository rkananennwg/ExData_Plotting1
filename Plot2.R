

#set working directory to file location
setwd("H:/datasciencecoursera/Exploratory Data/exdata-data-household_power_consumption")
#read in file
householdFile <- "household_power_consumption.txt"
plotData <- read.table(householdFile, header=T, sep=";", na.strings="?")
## set time variable
FebData <- plotData[plotData$Date %in% c("1/2/2007","2/2/2007"),]
SetTime <-strptime(paste(FebData$Date, FebData$Time),"%d/%m/%Y %H:%M:%S")

png(filename='plots/plot1.png',width=480,height=480,units='px')


## Plot 2
plot(FebData$Global_active_power~data$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()