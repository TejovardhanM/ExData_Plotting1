### Retreive the household consumption data..
source("HouseholdSourcedata.R")
### Draw a line graph 
with(data.filtered, plot(Time,Sub_metering_1, type="l",xlab="" ,ylab = "Energy sub metering") )
lines(data.filtered$Time,data.filtered$Sub_metering_2, col= "red")
lines(data.filtered$Time,data.filtered$Sub_metering_3, col= "blue")
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1), col = c("black", "red", "blue"))

dev.copy(png,'plot3.png',  width = 480, height = 480) 
dev.off() 
