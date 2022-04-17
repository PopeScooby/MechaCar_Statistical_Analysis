library(dbplyr)

mechaCarMpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)#Import The CSV

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMpg))#Determine P Value and R**

