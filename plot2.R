Plot2
>consumption <- read.table("household_power_consumption.txt", sep= ";", header = T, na.string = "?", nrows=2075259, check.names=F, stringsAsFactors=F,)

>sub_consumption <- subset(consumption, Date %in% c("1/2/2007","2/2/2007"))

>sub_consumption$Date <- as.Date(sub_consumption$Date, format="%d/%m/%Y")

>datetime <- paste(as.Date(sub_consumption$Date), sub_consumption$Time)

>sub_consumption$Datetime <- as.POSIXct(datetime)

>with(sub_consumption, {plot(Global_active_power~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")})

>dev.copy(png, file="plot2.png", height=480, width=480)

>dev.off()
