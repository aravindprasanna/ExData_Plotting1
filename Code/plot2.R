## Read the dataset
power <- read.csv2("Power.txt",stringsAsFactors = FALSE, na.strings = "?")
## Convert the time to Posixlt format
power$Time <- strptime(paste(power$Date,power$Time), format ="%d/%m/%Y %H:%M:%S")
## Convert the date to Date object
power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
## Set the start date
startdate <- as.Date("2007-02-01")
## Set the end data
enddate <- as.Date("2007-02-02")
## Subset the required date out of the dataset
reqdatalog <- power$Date == startdate | power$Date == enddate
reqdata <- power[reqdatalog,]
x <- reqdata$Time
y <- reqdata$Global_active_power
png(filename = "plot2.png")
plot(x,y, type="S", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()