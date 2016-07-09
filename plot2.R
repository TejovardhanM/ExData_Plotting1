### Retreive the household consumption data..
source("HouseholdSourcedata.R")
### Draw a line graph 
with(data.filtered, plot(Time,Global_active_power, type="l",xlab="" ,ylab = "Global Active Power (kilowatts)") )

dev.copy(png,'plot2.png',  width = 480, height = 480) 
dev.off() 


