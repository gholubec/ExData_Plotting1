#plot1.R


datDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/dat.d/exdata_data_household_power_consumption/"
dataFileName ="20070201.20070202.household_power_consumption.txt"
dataFilePath = paste0(datDir,dataFileName)
outDir = "G:/R_WorkingDirectory.d/ExploratoryDataAnalysis.d/Project1.d/Clone2.d/"

png(filename=paste0(outDir,"plot1.png"))


dataFileObj <- read.table(dataFilePath,
                          header = TRUE,
                          sep = ";",
                          na.strings = "?")




hist(dataFileObj$Global_active_power,
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power",
     col="red")


dev.off()