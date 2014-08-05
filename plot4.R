#plot4.R


datDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/dat.d/exdata_data_household_power_consumption/"
dataFileName ="20070201.20070202.household_power_consumption.txt"
dataFilePath = paste0(datDir,dataFileName)
outDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/Clone2.d/"

dataFileObj <- read.table(dataFilePath,
                          header = TRUE,
                          sep = ";",
                          na.strings = "?")

png(filename=paste0(outDir,"plot4.png"))

par(mfcol = c(2,2))

#{START: Chart 1:1
plot(dataFileObj$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)",
     xaxt="n"
)

axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),tck=-0.05)

#}END: Chart 1:1

#{START: Chart 2:1
plot(dataFileObj$Sub_metering_1,
     #dataFileObj$Sub_metering_2,
     type="l",
     xlab="",
     ylab="Energy sub metering",
     xaxt="n",
     )
lines(dataFileObj$Sub_metering_2,
     xlab="",
     ylab="Energy sub metering",
     xaxt="n",
     col="red"
)

lines(dataFileObj$Sub_metering_3,
  xlab="",
  ylab="Energy sub metering",
  xaxt="n",
  col="blue"
)


axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),tck=-0.05)
dev.cur()

legend('topright',
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       bty = "n",
       lty=1,
       col=c("black","red","blue"))

#}END Chart 2:1

#{START: Chart 1:2
plot(dataFileObj$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage",
     xaxt="n"
)

axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),tck=-0.05)
#}END: Chart 1:2

#{START: Chart 2:2
plot(dataFileObj$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power",
     xaxt="n"
)

axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),tck=-0.05)
#}END: Chart 2:2


dev.off()

