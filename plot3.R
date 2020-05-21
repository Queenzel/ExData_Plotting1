>consumption <- read.table("household_power_consumption.txt", sep= ";", header = T, na.string = "?", nrows=2075259, check.names=F, stringsAsFactors=F,)
>sub_consumption <- subset(consumption, Date %in% c("1/2/2007","2/2/2007"))
>sub_consumption$Date <- as.Date(sub_consumption$Date, format="%d/%m/%Y")
>datetime <- paste(as.Date(sub_consumption$Date), sub_consumption$Time)
>sub_consumption$Datetime <- as.POSIXct(datetime)
> with(sub_consumption, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
>legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,  legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
>dev.copy(png, file="plot3.png", height=480, width=480)
>dev.off()
