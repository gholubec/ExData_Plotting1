#plot3.R


datDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/dat.d/exdata_data_household_power_consumption/"
dataFileName ="20070201.20070202.household_power_consumption.txt"
dataFilePath = paste0(datDir,dataFileName)
outDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/Clone2.d/"

dataFileObj <- read.table(dataFilePath,
                          header = TRUE,
                          sep = ";",
                          na.strings = "?")

png(filename=paste0(outDir,"plot3.png"))


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
       lty=1,
       col=c("black","red","blue"))

dev.off()

