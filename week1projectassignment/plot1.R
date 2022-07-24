library(datasets)
dataset <- read.table("/Users/asudeberber/Downloads/household_power_consumption.txt", sep=";", header = TRUE)
dataset$Date <- as.Date(dataset$Date, format="%d/%m/%Y")
global_active_power <- subset(dataset, Date == "2007-02-01" | Date == "2007-02-02")$Global_active_power

png("plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(global_active_power)), 
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()
