rm(list=ls())
setwd("/Users/GauRaj/Dropbox/Coursera/DataScience_JHU/EDA/Project1/ExData_Plotting1")
household <- read.table("household_power_consumption.txt", na.strings="?", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
household_sub <- household[household$Date %in% c("1/2/2007","2/2/2007") ,]
str(household_sub)
datetime <- strptime(paste(household_sub$Date, household_sub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(household_sub$Global_active_power)
subMetering1 <- as.numeric(household_sub$Sub_metering_1)
subMetering2 <- as.numeric(household_sub$Sub_metering_2)
subMetering3 <- as.numeric(household_sub$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
