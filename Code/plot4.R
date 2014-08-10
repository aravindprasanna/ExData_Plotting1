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
# convert to numeric first
glact <- as.numeric(reqdata$Global_active_power)
glreact <- as.numeric(reqdata$Global_reactive_power)
voltage <- as.numeric(reqdata$Voltage)
submet1 <- as.numeric(reqdata$Sub_metering_1)
submet2 <- as.numeric(reqdata$Sub_metering_2)
submet3 <- as.numeric(reqdata$Sub_metering_3)
## set up the X Axis f the first plot
x <- reqdata$Time
#open the graphics device
png(filename = "plot4.png",  width = 480, height = 480)
## set up a grid of 2 rows and 2 columns
par(mfrow = c(2, 2))
# set up the plot 1
plot(x,glact, xlab="", ylab="Global Active Power", type="s")
# Set up the plot 2
plot(x,voltage, xlab="datetime", ylab="Voltage", type="s")
# set up the plot 3
#get the range of x and y axis
xrange <- range(reqdata$Time)
yrange <- range(submet1,submet2,submet3)
plot(xrange, yrange, type="n",xlab="",ylab="Energy sub metering",lwd=1.5)
color <- c("black", "red", "blue")
# add lines
lines(x,reqdata[,7],type="s",col="black")
lines(x,reqdata[,8],type="s",col="red")
lines(x,reqdata[,9],type="s",col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), 
       bty="n")
#set up the plot 4
plot(x,glreact, xlab="datetime", ylab="Global Reactive Power", type="s", lwd=1)
dev.off()