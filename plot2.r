## Subsetting the data
  dataSubset <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
  rm(data)
  
    ## Converting dates
    datetime <- paste(as.Date(dataSubset$Date), dataSubset$Time)
    dataSubset$Datetime <- as.POSIXct(datetime)
    
      ## Set up png device
      png(file="plot2.png", height=480, width=480)
    
      ## Plot 2
      plot(dataSubset$Global_active_power~dataSubset$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")
    
      ## Close png device
      dev.off() 