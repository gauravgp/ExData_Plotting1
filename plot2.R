rm(list=ls())
setwd("/Users/GauRaj/Dropbox/Coursera/DataScience_JHU/EDA/Project1/ExData_Plotting1")
household <- read.table("household_power_consumption.txt", na.strings="?", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
household_sub <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
globalActivePower <- as.numeric(household_sub$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
