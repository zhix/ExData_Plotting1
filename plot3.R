dirLocation <- "C:/Users/User/Dropbox/Personal/Coursera/DataScience/4_ExploratoryDataAnalysis/exdata-data-household_power_consumption"
setwd(dirLocation)

source('subsetData.R')

legendNames <- colnames(x)[7:9]
legendColors <- c("black", "red", "blue")

plot.new()

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
	lty = 1
	)

dev.copy(png, file = "plot3.png", width = 600, height = 600)
dev.off()