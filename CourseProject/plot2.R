dirLocation <- "C:/Users/User/Dropbox/Personal/Coursera/DataScience/4_ExploratoryDataAnalysis/exdata-data-household_power_consumption"
setwd(dirLocation)

source('subsetData.R')

plot(x$CombinedDate, x$Global_active_power, 
	type = "l", 
	ylab = "Global Active Power (kilowatts)",
	xlab = "")

dev.copy(png, file = "plot2.png")
dev.off()