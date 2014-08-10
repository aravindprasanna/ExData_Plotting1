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
submet1 <- as.numeric(reqdata$Sub_metering_1)
submet2 <- as.numeric(reqdata$Sub_metering_2)
submet3 <- as.numeric(reqdata$Sub_metering_3)
#get the range of x and y axis
xrange <- range(reqdata$Time)
yrange <- range(submet1,submet2,submet3)
#open the graphics device
png(filename = "plot3.png")
# set up the plot
plot(xrange, yrange, type="n",xlab="",ylab="Energy sub metering",lwd=1.5)
color <- c("black", "red", "blue")
# add lines
x <- reqdata[,2]
lines(x,reqdata[,7],type="s",col="black")
lines(x,reqdata[,8],type="s",col="red")
lines(x,reqdata[,9],type="s",col="blue")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1))
dev.off()