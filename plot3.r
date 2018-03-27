## Subsetting the data
 dataSubset <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
 rm(data)
  
   ## Converting dates
    datetime <- paste(as.Date(dataSubset$Date), dataSubset$Time)
    dataSubset$Datetime <- as.POSIXct(datetime)
    
     ## Set up png device
    png(file="plot3.png", height=480, width=480)
   
     ## Plot 3
      with(dataSubset, {
          plot(Sub_metering_1~Datetime, type="l",
                      ylab="Global Active Power (kilowatts)", xlab="")
          lines(Sub_metering_2~Datetime,col='Red')
        lines(Sub_metering_3~Datetime,col='Blue')
        })
   legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
                  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
      ## Close png device
      dev.off() 