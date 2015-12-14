##create a plot showing three sub metering on datetime
##check if the newData exists in the file list
if (!"Load_Data.R" %in% list.files()) {
        setwd("~/UMD/R/Exploratory Data Analysis/ExData_Plotting1")
} 
source("Load_Data.R")
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()