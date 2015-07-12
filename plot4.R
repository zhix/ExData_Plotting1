dirLocation <- "C:/Users/User/Dropbox/Personal/Coursera/DataScience/4_ExploratoryDataAnalysis/exdata-data-household_power_consumption"
setwd(dirLocation)

source('subsetData.R')

par(mfrow = c(2,2))

#Plot 1:
plot(x$CombinedDate, x$Global_active_power, 
	type = "l", 
	ylab = "Global Active Power (kilowatts)",
	xlab = "")

#Plot 2:
plot(x$CombinedDate, x$Voltage, 
	type = "l", 
	ylab = "Voltage",
	xlab = "datetime")

#Plot 3:
legendNames <- colnames(x)[7:9]
legendColors <- c("black", "red", "blue")


plot(x$CombinedDate, x$Sub_metering_1, 
	type = "l", 
	ylab = "Energy Sub Metering", 
	xlab = "", 
	col = legendColors[1])
lines(x$CombinedDate, x$Sub_metering_2,
	col = legendColors[2])
lines(x$CombinedDate, x$Sub_metering_3,
	col = legendColors[3])

legend("topright",
 	legendNames, 
	col = legendColors, 
	lty = 1,
	)

#Plot 4:
plot(x$CombinedDate, x$Global_reactive_power, 
	type = "l", 
	ylab = "Global_reactive_power",
	xlab = "datetime")

dev.copy(png, file = "plot4.png", width = 1000, height = 1000)
dev.off()