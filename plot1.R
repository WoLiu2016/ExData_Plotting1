##plot 1 is to create a histogram showing the frequency of Global Active Power
##Check whether the newdata
if (!"Load_Data.R" %in% list.files()) {
        setwd("~/UMD/R/Exploratory Data Analysis/ExData_Plotting1")
} 
source("Load_Data.R")
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()