source("Loading the DataR")

#plot.3
plot(time_set, set$Sub_metering_1, type = "l",xlab = "", ylab = "Energy sub metering" )
lines(time_set, set$Sub_metering_2, type = "l", col = "red")
lines(time_set, set$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, lwd = 1.5, cex = 0.7, col =c("black", "red", "blue"),
       y.intersp = 0.5)

#Saving file
dev.copy(png,  file = "plot3.png", height = 480, width = 480)
dev.off()     
