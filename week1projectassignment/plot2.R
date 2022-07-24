png("plot2.png", width = 480, height = 480)
plot(dataset$date.time, 
     as.numeric(as.character(dataset$Global_active_power)), 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()
