png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2), mar = c(5, 4, 2, 1))

plot(subDf$date.time, 
     as.numeric(as.character(subDf$Global_active_power)), 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

plot(subDf$date.time, 
     as.numeric(as.character(subDf$Voltage)), 
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

plot(subDf$date.time, sub_1, col = "black", type = "l", 
     xlab = "", 
     ylab = "Energy sub metering")
lines(subDf$date.time, sub_2, col = "red", type = "l")
lines(subDf$date.time, sub_3, col = "blue", type = "l")
legend('topright','groups'
       ,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lty = 1,
       col=c('black','red','blue'), bty = "n")

plot(subDf$date.time, 
     as.numeric(as.character(subDf$Global_reactive_power)), 
     type = "l",
     xlab = "datetime",
     ylab = "Global_active_power")

dev.off()
