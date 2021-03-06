DT <- read.table("electricityPower.txt",head=TRUE,sep=";")
Sys.setlocale(category = "LC_TIME", locale = "C")
DT$Date <- as.Date(DT$Date,"%d/%m/%Y")
DT$DateTime <- paste(DT$Date,DT$Time)
DT$DateTime  <- as.POSIXct(DT$DateTime,format="%Y-%m-%d %H:%M:%S")
plot(DT$DateTime,DT$Global_active_power,type="l",
     ylab="Global Active Power (kilowatts)",xlab="")
library(datasets)
dev.copy(png, file = "plot2.png",width=480,height=480)
dev.off()
