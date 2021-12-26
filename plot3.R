plot3 <- function() {
    df <- read.csv("household_pc.csv")
    png(filename="plot3.png", width=480, height=480)
    plot(as.POSIXct(df$DateTime), df$Sub_metering_1, xlab="", type="n", ylab="Energy sub metering")
    points(as.POSIXct(df$DateTime), df$Sub_metering_1, type="l", col="black")
    points(as.POSIXct(df$DateTime), df$Sub_metering_2, type="l", col="red")
    points(as.POSIXct(df$DateTime), df$Sub_metering_3, type="l", col="blue")
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1)
    dev.off()
    print("Plot3 completed!")
}