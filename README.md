## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

When loading the dataset into R, please consider the following:

* After downloading the dataset from the repository the file must be renamed as "Power.txt" in order for the code segments to work

* The plots will be written back to the output directory

* The code for the first plot is saved under plot1.r , second under plot2.r, third under plot3.r and fourth under plot4.r

## Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. Y

Each Plot

* Each plot is  PNG file with a width of 480 pixels and a height of 480 pixels.

* In total there are 4 plots plot1.png , plot2.png, plot3.png , plot4.png

The four plots that are needed are constructed as shown below. 


### Plot 1

Frequency VS. Global Active Power


### Plot 2

Global Active Power Vs. Time of the day


### Plot 3

Energy Sub Metering Vs. Time of the day


### Plot 4

Four plots in one

* Global Active Power Vs. Time of the day
* Voltage Vs. Time of the day
* Energy Sub Metering Vs. Time of the day
* Global Reactive Power Vs. Time of the day

