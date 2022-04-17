#Deliverable 1
library(dbplyr)

mechaCarMpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)#Import The CSV

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMpg))#Determine P Value and R**

#Deliverable 2
suspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)#Import The CSV

summaryTotal <- suspensionCoil %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))

summaryLot <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))
