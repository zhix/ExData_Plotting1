dirLocation <- "C:/Users/User/Dropbox/Personal/Coursera/DataScience/4_ExploratoryDataAnalysis/exdata-data-household_power_consumption"
setwd(dirLocation)

source('subsetData.R')

hist(as.numeric(x$Global_active_power), 
     breaks = 15, 
     main = "Global Active Power", 
     col = "red",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency",
     ylim = c(0,1200),
     las = 0
     )

dev.copy(png, file = "plot1.png", width = 400, height = 400)
dev.off()