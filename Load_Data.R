##read the Electric power consumption dataset
##read the dataset from the dates 2007-02-01 and 2007-02-02
filename<- "./household_power_consumption.txt"
data<- read.table(filename, 
                  header = TRUE, 
                  sep= ";", 
                  colClasses = c("character", "character", rep("numeric", 7)), 
                  na= "?")
attach(data)
## Creata new dataset with the data "1/2/2007" and "2/2/2007"
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newdata <- data[subset, ]
attach(newdata)
x <- paste(Date, Time)
newdata$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newdata) <- 1:nrow(newdata)
attach(newdata)