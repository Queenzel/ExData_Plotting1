Plot1
>consumption <- read.table("household_power_consumption.txt", sep= ";", header = T, na.string = "?", nrows=2075259, check.names=F, stringsAsFactors=F,)
>sub_consumption <- subset(consumption, Date %in% c("1/2/2007","2/2/2007"))
>sub_consumption$Date <- as.Date(sub_consumption$Date, format="%d/%m/%Y")
>hist(sub_consumption$Global_active_power, main="Global Active Power",   xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
> dev.copy(png, file="plot1.png", height=480, width=480)
>dev.off()
