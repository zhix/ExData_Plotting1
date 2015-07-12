rm(list = ls())
library(dplyr)

dirLocation <- "C:/Users/User/Dropbox/Personal/Coursera/DataScience/4_ExploratoryDataAnalysis/exdata-data-household_power_consumption"
setwd(dirLocation)

# function(date in Char) > date in Date
convertDate <- function(date) {
  as.Date(strptime(date, format = "%d/%m/%Y", tz = "GMT"))
}

# Declare date
#dateWanted <- c("2007-02-01", "2007-02-02")
dateWanted <- c("01/02/2007", "02/02/2007")
dateWanted <- convertDate(dateWanted)

# Read file into dataframe
fileData <- "household_power_consumption.txt"
x <- read.table(fileData, 
                sep = ";", 
                header=TRUE, 
                colClasses = c(rep("character",2), rep("numeric",7)),
                na = "?")

x$CombinedDate <- paste(x$Date,x$Time)
x$CombinedDate <- as.POSIXct(strptime(x$CombinedDate, 
							 format = "%d/%m/%Y %H:%M:%S", 
							 tz = "GMT"))
x$Date <- as.Date(x$CombinedDate, tz = "GMT")

x <- filter(x, Date %in% dateWanted)