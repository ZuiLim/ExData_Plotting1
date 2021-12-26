plot2 <- function() {
	df <- read.csv("household_pc.csv")
	png(filename="plot2.png", width=480, height=480)
	plot(as.POSIXct(df$DateTime), as.numeric(df$Global_active_power), ylab="Global Active Power (kilowatts)", xlab="", type="l")
	dev.off()
	print("Plot2 completed!")
}