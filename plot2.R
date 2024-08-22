## Loading the Data and then subsetting it

household_power_consumption <- read_delim("C:/Users/Charb/OneDrive/Desktop/R training/Exploratory_Data_Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", 
                                          delim = ";", escape_double = FALSE, trim_ws = TRUE)

February <- subset(household_power_consumption, Date == "1/2/2007" | 
                     Date == "2/2/2007")

##Turning the Dates and Times into actual a single DateTime variable
#| This method was easier than using the suggested strtime (for me anw)

February$DateTime <- 
as.POSIXct(paste(February$Date, February$Time), format = "%d/%m/%Y %H:%M:%S")

##Making and Saving the Plot

png(file = "Plot2.png", height= 480, width = 480)
plot(February$DateTime, February$Global_active_power, type="l",
       xlab= "Time", ylab = "Global active power")
title(main = "Global Active Power over 2 days")
dev.off()


