source("Loading the Data.R")

#plot 4
par(mfrow = c(2, 2)) 
plot(time_set, set$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(time_set, set$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(time_set, set$Sub_metering_1, type = "l",xlab = "", ylab = "Energy sub metering" )
lines(time_set, set$Sub_metering_2, type = "l", col = "red")
lines(time_set, set$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 1.5, cex = 0.7, col =c("black", "red", "blue"), bty = "n",
       y.intersp = 0.2)
plot(time_set, set$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

#Saving File
dev.copy(png,  file = "plot4.png", height = 480, width = 480)
dev.off() 
