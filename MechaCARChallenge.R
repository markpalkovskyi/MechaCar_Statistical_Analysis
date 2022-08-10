library(tidyverse)
### Multi regression on MechaCar data
# Read in the csv file
mechaCar_data <- read.csv("MechaCar_mpg.csv",stringsAsFactors = F,check.names = F)

# Perform a linear regression module 
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCar_data)

# Determine linear regression module
summary(mecha_lm)


### Perform suspension coil dataset
# Read in the csv file
sus_data <- read.csv("Suspension_Coil.csv",stringsAsFactors = F, check.names = F)

#Summary
total_summary <- sus_data %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Lot summary
lot_summary <- sus_data %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')


### Suspension Coil T-Tests
# t-test across all lots
t.test(sus_data$PSI,mu = 1500)

# t-test on lot 1
t.test(subset(sus_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# t-test on lot 2
t.test(subset(sus_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# t-test on lot 3
t.test(subset(sus_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)






