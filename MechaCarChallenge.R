#Deliverable 1
library(dbplyr)

mechaCarMpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)#Import The CSV

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarMpg))#Determine P Value and R**

#Deliverable 2
suspensionCoil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)#Import The CSV

summaryTotal <- suspensionCoil %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))# Total Summary

summaryLot <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI))# Lot Summary

#Deliverable 3
t.test(x=suspensionCoil$PSI,mu=1500) #Total Mean 

t.test(x=subset(suspensionCoil,Manufacturing_Lot=="Lot1")$PSI, mu=1500) #Lot1 T.Test 

t.test(x=subset(suspensionCoil,Manufacturing_Lot=="Lot2")$PSI, mu=1500) #Lot2 T.Test 

t.test(x=subset(suspensionCoil,Manufacturing_Lot=="Lot3")$PSI, mu=1500) #Lot3 T.Test 
