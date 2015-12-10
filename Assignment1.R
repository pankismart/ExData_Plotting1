# Loading the data and loading the libraries like data.table for memory issues
library(dplyr)
mydata = read.table("D:/coursera/household_power_consumption.txt",sep=";",header=TRUE,colClasses=c("character", "character", rep("numeric",7)),na="?")
df<-tbl_df(mydata)


#Subsetting the data from 2007-02-01 and 2007-02-02 dates and forming a newdata variable

df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
df$Date <- as.Date(df$Date,"%d/%m/%Y")


dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
df <- subset(df, Date %in% dates)
    
