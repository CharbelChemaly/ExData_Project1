## Loading the Data and then subsetting it

household_power_consumption <- read_delim("C:/Users/Charb/OneDrive/Desktop/R training/Exploratory_Data_Analysis/exdata_data_household_power_consumption/household_power_consumption.txt", 
                                          delim = ";", escape_double = FALSE, trim_ws = TRUE)

February <- subset(household_power_consumption, Date == "1/2/2007" | 
                     Date == "2/2/2007")

## Making Global Active Power numeric

February <- mutate(February, Global_active_power = as.numeric(Global_active_power))

## Making the Histogram using base R and saving it on PNG format
png(file="Plot1.png", width = 480, height = 480)
hist(February$Global_active_power, col="red", main = "Global Active Power",
     xlab = "Global active power (kilowatts)")
dev.off()



