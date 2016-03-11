
source("Loading the Data.R")
#plot.2
plot(time_set, set$Global_active_power, 
     xlab = "",
     ylab = "Global Active Power(kilowatts)",
     type = "l")

#Saving the file
dev.copy(png,  file = "plot2.png", height = 480, width = 480)
dev.off()
