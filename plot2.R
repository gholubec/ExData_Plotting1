#plot2.R


datDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/dat.d/exdata_data_household_power_consumption/"
dataFileName ="20070201.20070202.household_power_consumption.txt"
dataFilePath = paste0(datDir,dataFileName)
outDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/Clone2.d/"

dataFileObj <- read.table(dataFilePath,
                          header = TRUE,
                          sep = ";",
                          na.strings = "?")

png(filename=paste0(outDir,"plot2.png"))

plot(dataFileObj$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)",
     xaxt="n"
     )

axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"),tck=-0.05)

dev.off()
