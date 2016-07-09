### Retreive the household consumption data..
##setwd("C:\\Tejo\\Datascience\\ExploratoryDataAnalysis\\ExData_Plotting1\\")
source("HouseholdSourcedata.R")
### Draw a line graph 
par(mfrow=c(2,2))

with(data.filtered, plot(Time,Global_active_power, type="l",xlab="" ,ylab = "Global Active Power (kilowatts)") )

with(data.filtered, plot(Time,Voltage, type="l",xlab="datetime" ,ylab = "Voltage") )

with(data.filtered, plot(Time,Sub_metering_1, type="l",xlab="" ,ylab = "Energy sub metering") )
with(data.filtered, lines(Time,Sub_metering_2, col= "red"))
with(data.filtered, lines(Time,Sub_metering_3, col= "blue"))
with(data.filtered, legend("topright", legend= names(data.filtered[7:9]),
                           lty=c(1,1,1), col = c("black", "red", "blue"), cex=0.7))

###names(data.filtered[7:9])
###"Sub_metering_1" "Sub_metering_2" "Sub_metering_3"

with(data.filtered, plot(Time,Global_reactive_power, type="l",xlab="datetime" ,ylab = "Global_reactive_power") )


dev.copy(png,'plot4.png',  width = 480, height = 480) 
dev.off() 
