##plot 2 is to create a plot with DateTime and Global_active_power
##Check if the data is in the dir
if (!"Load_Data.R" %in% list.files()) {
        setwd("~/UMD/R/Exploratory Data Analysis/ExData_Plotting1")
} 
source("Load_Data.R")
png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()