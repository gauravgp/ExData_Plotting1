rm(list=ls())
setwd("/Users/GauRaj/Dropbox/Coursera/DataScience_JHU/EDA/Project1/ExData_Plotting1")
household <- read.table("household_power_consumption.txt", na.strings="?", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
household_sub <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]
str(household_sub)
datetime <- strptime(paste(household_sub$Date, household_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(household_sub$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
