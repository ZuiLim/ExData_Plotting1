plot1 <- function() {
	df <- read.csv("household_power_consumption.txt", sep=";")
	df$Date <- strptime(df$Date, "%d/%m/%Y")
	df <- subset(df, as.Date(Date) %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")))
	df$DateTime <- as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")
	write.csv(df, file="household_pc.csv")
	png(filename="plot1.png", width=480, height=480)
	hist(as.numeric(df$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", col = "red")
	dev.off()
	print("Plot1 completed")
}