

source("Loading the Data.R") 
#plot.1
hist(set$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)", col = "red")

#Saving the file
dev.copy(png,  file = "plot1.png", height = 480, width = 480)
dev.off()
## Generating Plot 1
hist(FebData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")






      
