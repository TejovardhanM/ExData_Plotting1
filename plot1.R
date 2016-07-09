### Retreive the household consumption data..
source("HouseholdSourcedata.R")

with(data.filtered, hist(Global_active_power, col ="red", xlab = "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power"))

dev.copy(png,'plot1.png',  width = 480, height = 480) 
 dev.off() 

