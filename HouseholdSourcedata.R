
setwd("C:\\Tejo\\Datascience\\ExploratoryDataAnalysis\\ExData_Plotting1\\")

housepowerconsumption<-read.table("C:\\Tejo\\Datascience\\ExploratoryDataAnalysis\\exdata_data_household_power_consumption\\household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
###head(housepowerconsumption)
###str(housepowerconsumption)

##housepowerconsumption$Date<- as.Date(housepowerconsumption$Date, "%m/%d/%Y")
##filter the data, which includes the dates with (2007-02-01 , 2007-02-02)
data.filtered<- housepowerconsumption[housepowerconsumption$Date == "1/2/2007"| housepowerconsumption$Date == "2/2/2007" ,]

data.filtered$Date<-as.Date(data.filtered$Date, format="%d/%m/%Y")
data.filtered$Time<-with (data.filtered, strptime(paste(Date,Time), format= "%Y-%m-%d %H:%M:%S"))

##str(housepowerconsumption)
rm(housepowerconsumption)
print ("Data loaded into data.filtered...")

